
This is a "first test" of making an "app-launcher" for the reMarkable.
It has been tested and it works on the latest os version.
I have not tested this on the new reMarkable v2 hardware.
Please! Note that this is just a super-fast test to see if this is possible.
I take absolutely NO RESPONSIBILITY for your reMarkable when you are using this application.
I can make this a more "finished product" if the demand for these increases.


How to test the application on your reMarkable: (without compiling)
ssh into you reMarkable. (settings > About on your reMarkable will show you the ip and password)
run "wget https://github.com/Lobeltas/rMAppLauncher/raw/master/reMarkable"
run "chmod +x reMarkable"
run "./reMarkable"

It should now detect if you access a .pdf file where there is a .app with the same filename (uuid).
If there is a .app file it stops the reMarkable native app and lanches the .app file instead.
It starts the reMarkable native app when the .app has ended.

'q' stops the application.
./reMarkable daemon starts it in a daemon which means that you can disconnect from ssh and the application will still run.
It will be stopped when the reMarkable goes to sleep.


Look at the app-example folder to create an application.
Copy the .metadata and edit "visibleName" to the name of your application.
Generate a new uuid (https://www.guidgenerator.com/) and rename the .metadata file with the new uuid.
Create a .pdf with a single page. A thumbnail of the first page will be created by the reMarkable native app.
Name that .pdf to the same uuid that you named your .metadata file.
Rename your application that you want the launcher to start to the same uuid ending with .app

Copy all files to /home/root/.local/share/remarkable/xochitl/ on your reMarkable.
I use sftp.

Restart the reMarkable native app:
run "systemctl stop xochitl"
run "systemctl start xochitl"

or just reboot the entire thing:
run "reboot"




I have no idea how to make this autostart on boot.
Suggestions are welcome.


TODOs:

Autostart on boot.