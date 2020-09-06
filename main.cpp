#include <sys/inotify.h>
#include <limits.h>
#include <error.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h> 
#include <sys/socket.h>
#include <netinet/in.h>
#include <sched.h>
#include <termios.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <errno.h>
#include <syslog.h>
#include <string.h>
#include <pwd.h>
#include <signal.h>
#include <ctype.h>
#include <sys/sysinfo.h>
#include <sys/time.h>
#include <stdarg.h>
#include <time.h>


int main_daemon();
int main_child();
void sig_handler(int signo);
int startApp(const char* _Path, const char* _UUID);
bool file_exist(const char* _Filepath);
int kbhit(void);
bool uuid_is_valid(const char* _UUID);
static inline void SystemMonotonicMS(uint64_t* _Result);



bool g_StopwMainThread = false;

int main(int argc, char* argv[])
{
	if(argc > 1)
	{
		if(memcmp(argv[1], "daemon", 6) == 0)
			return main_daemon();
		
	}
	return main_child();
}

int main_daemon()
{
	printf("Forking process...\r\n");
	pid_t pid = fork();
	if (pid < 0) 
	{
		printf("Failed to fork daemon!\r\n");
		exit(EXIT_FAILURE);
		return 1;
	}
	else if (pid > 0) 
	{
		printf("Stopping parent\r\n");
		exit(EXIT_SUCCESS);
		return 0;
	}

	printf("Fetching applicationPID...");
	pid = getpid();
	printf("(%u)\r\n", pid);

	printf("Unmasking application...\r\n");
	umask(0);

	printf("Setting SID for application...\r\n");
	pid_t sid = setsid();
	if (sid < 0) {
		printf("Failed to create SID for application process!\r\n");
		exit(EXIT_FAILURE);
		return 2;
	}

	signal(SIGALRM, SIG_IGN);
	signal(SIGPIPE, SIG_IGN);
	signal(SIGCHLD, SIG_IGN);   // A child process dies 
	signal(SIGTSTP, SIG_IGN);   // Various TTY signals
	signal(SIGTTOU, SIG_IGN);
	signal(SIGTTIN, SIG_IGN);
	signal(SIGHUP, SIG_IGN);    // Ignore hangup signal
	//signal(SIGTERM, SIG_DFL);   // Die on SIGTERM
	signal(SIGTERM, sig_handler);	

	//freopen("/dev/null", "a", stderr);
	//freopen("/dev/null", "r", stdin);
	
	int success = main_child();
	exit(EXIT_SUCCESS);
	return success;
}

int main_child()
{
	printf("rM appLoader v1.0 started\r\n");

	signal(SIGUSR1, SIG_IGN);
	signal(SIGALRM, SIG_IGN);
	signal(SIGCHLD, SIG_IGN);   // A child process dies 
	signal(SIGTSTP, SIG_IGN);   // Various TTY signals
	signal(SIGTTOU, SIG_IGN);
	signal(SIGTTIN, SIG_IGN);
	signal(SIGHUP, SIG_IGN);    // Ignore hangup signal
	//signal(SIGTERM, SIG_DFL);   // Die on SIGTERM
	signal(SIGTERM, sig_handler);

	const char* path = "/home/root/.local/share/remarkable/xochitl/";
	int fd = inotify_init();
	if(fd < 0)
	{
		error(EXIT_FAILURE, errno, "Failed to initialize inotify instance");
		return 1;
	}

	int wd = inotify_add_watch (fd, path, IN_OPEN | O_NONBLOCK);
	if(wd < 0)
	{
		error(EXIT_FAILURE, errno, "Failed to add inotify watch for '%s'", path);
		return 2;
	}


	int oldf = fcntl(fd, F_GETFL, 0);
	fcntl(fd, F_SETFL, oldf | O_NONBLOCK);

	
	printf("Waiting for filesystem changes...\r\n");
	char buf[sizeof(struct inotify_event) + PATH_MAX];
	while(g_StopwMainThread == false)
	{
		int bytesRead = read(fd, buf, sizeof(buf));
		if(bytesRead >= 0)
		{
			int i = 0;
			while (i < bytesRead) {
				struct inotify_event* ie = (struct inotify_event*) &buf[i];
				if (ie->mask & IN_OPEN && ie->len > 0)
				{
					int length = strlen(ie->name);
					if(length == 40)
					{
						if(memcmp(&ie->name[length - 4], ".pdf", 5) == 0)
						{
							ie->name[length - 4] = 0;
							if(uuid_is_valid(ie->name))
							{
									printf("%s opened...\r\n", ie->name);
									int success = startApp(path, ie->name);
									if(success == 0)
										printf("App started and ended correct\r\n");

									else if(success == 1)
										printf("No app associated with that UUID\r\n");

									else
										printf("Failed to start app! Errorcode: %i\r\n", success);

							}
							else
							{
								printf("\"%s\" is not a valid UUID!\r\n", ie->name);
							}				
						}
					}
				}

				i += sizeof(struct inotify_event) + ie->len;
			}

			usleep(100000); //=100ms > 1000us = 1ms
		}
		else
		{
			//error(EXIT_FAILURE, errno, "Failed to read inotify event");
		}


		if(kbhit())
		{
			char c = getchar();
			if(c == 'q')
				g_StopwMainThread = true;
				
		}

	}

	printf("rM appLoader v1.0 stopped\r\n");
	

	return 3;
}




//----------- Helper functions----------




uint64_t g_SystemMonotonicMS_LastTime = 0;
bool g_SystemMonotonic_ReverseWarning = false;
static inline void SystemMonotonicMS(uint64_t* _Result)
{
	if(_Result == NULL)
		return;

	uint64_t result = 0;

	long            ms; 
	time_t          s; 

	struct timespec spec;
	clock_gettime(CLOCK_MONOTONIC, &spec);
	s  = spec.tv_sec;
	ms = (spec.tv_nsec / 1000000);

	result = s;
	result *= 1000;
	result += ms;

	if(result < g_SystemMonotonicMS_LastTime)
		g_SystemMonotonic_ReverseWarning = true;
			
	g_SystemMonotonicMS_LastTime = result;
	*(_Result) = result;

}

//https://code.woboq.org/linux/linux/lib/uuid.c.html
#define	UUID_STRING_LEN	36
bool uuid_is_valid(const char* _UUID)
{
	unsigned int i;
	for (i = 0; i < UUID_STRING_LEN; i++)
	{
		if (i == 8 || i == 13 || i == 18 || i == 23)
		{
			if (_UUID[i] != '-')
				return false;

		}
		else if(!isxdigit(_UUID[i]))
		{
			return false;
		}
	}

	return true;
}
//------------------------------------------

int kbhit(void)
{
  struct termios oldt, newt;
  int ch;
  int oldf;
 
  tcgetattr(STDIN_FILENO, &oldt);
  newt = oldt;
  newt.c_lflag &= ~(ICANON | ECHO);
  tcsetattr(STDIN_FILENO, TCSANOW, &newt);
  oldf = fcntl(STDIN_FILENO, F_GETFL, 0);
  fcntl(STDIN_FILENO, F_SETFL, oldf | O_NONBLOCK);
 
  ch = getchar();
 
  tcsetattr(STDIN_FILENO, TCSANOW, &oldt);
  fcntl(STDIN_FILENO, F_SETFL, oldf);
 
  if(ch != EOF)
  {
    ungetc(ch, stdin);
    return 1;
  }
 
  return 0;
}

bool file_exist(const char* _Filepath)
{
	struct stat sts;
	if (stat(_Filepath, &sts) == -1 && errno == ENOENT)
		return false;

	return true;
}

int startApp(const char* _Path, const char* _UUID)
{

	char command[PATH_MAX];
	sprintf(command, "%s/%s.app", _Path, _UUID);

	if(!file_exist(command))
		sprintf(command, "%s/%s.sh", _Path, _UUID);

	if(!file_exist(command))
		return 1;


	printf("Stopping reMarkable app...\r\n");
	system("systemctl stop xochitl");

	printf("Running app: %s\r\n", _UUID);

	system(command);

	printf("Starting reMarkable app...\r\n");
	system("systemctl start xochitl");
	
	return 0;
}


void sig_handler(int signo)
{
	if(signo == SIGTERM)
		g_StopwMainThread = true;

}

//-------------------