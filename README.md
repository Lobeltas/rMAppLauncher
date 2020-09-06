
This is a "first test" of making an "app-launcher" for the reMarkable.<br>
It has been tested and it works on the latest os version.<br>
I have not tested this on the new reMarkable v2 hardware.<br>
Please! Note that this is just a super-fast test to see if this is possible.<br>
I take absolutely NO RESPONSIBILITY for your reMarkable when you are using this application.<br>
I can make this a more "finished version" if the demand for this increases.<br>
<br>
<br>
How to test the application on your reMarkable: (without compiling)<br>
ssh into you reMarkable. (settings > About on your reMarkable will show you the ip and password)<br>
run "wget https://github.com/Lobeltas/rMAppLauncher/raw/master/reMarkable"<br>
run "chmod +x reMarkable"<br>
run "./reMarkable"<br>
<br>
It should now detect if you access a .pdf file where there is a .app with the same filename (uuid).<br>
If there is a .app file it stops the reMarkable native app and lanches the .app file instead.<br>
It starts the reMarkable native app when the .app has ended.<br>
<br>
'q' stops the application.<br>
./reMarkable daemon starts it in a daemon which means that you can disconnect from ssh and the application will still run.<br>
It will be stopped when the reMarkable goes to sleep.<br>
<br>
<br>
Look at the app-example folder to create an application.<br>
Copy the .metadata and edit "visibleName" to the name of your application.<br>
Generate a new uuid (https://www.guidgenerator.com/) and rename the .metadata file with the new uuid.<br>
Create a .pdf with a single page. A thumbnail of the first page will be created by the reMarkable native app.<br>
Name that .pdf to the same uuid that you named your .metadata file.<br>
Rename your application that you want the launcher to start to the same uuid ending with .app<br>
<br>
Copy all files to /home/root/.local/share/remarkable/xochitl/ on your reMarkable.<br>
I use sftp.<br>
<br>
Restart the reMarkable native app:<br>
run "systemctl stop xochitl"<br>
run "systemctl start xochitl"<br>
<br>
or just reboot the entire thing:<br>
run "reboot"<br>
<br>
<br>
<br>
<br>
I have no idea how to make this autostart on boot.<br>
Suggestions are welcome.<br>
<br>
<br>
TODOs:<br>
<br>
Autostart on boot.
<br>
<br>
<br>
<br>
<br>