

This is a first test of making a "app-launcher" for the reMarkable.<br>
It has been tested and it works on the latest os version.<br>
I have not tested this on the new reMarkable v2 hardware.<br>
<br>
<br>
How to test the application on your reMarkable: (without compiling)<br>
ssh into you reMarkable. (settings > About on your reMarkable will show you the ip and password)<br>
run "wget https://github.com/Lobeltas/rMAppLauncher/raw/master/reMarkable"<br>
run "chmod +x reMarkable"<br>
run "./reMarkable"<br>

It should now detect if you access a .pdf file where there is a .app with the same filename (uuid).<br>
If there is a .app file it stops reMarkable native app and lanches the .app file instead.<br>
It the starts the reMarkable native app When the .app has ended.<br>
<br>
<br>
I have no idea how to make this autostart on boot.<br>
Suggestions are welcome.<br>
<br>
<br>
TODOs:<br>
<br>
Autostart on boot.<br>
<br>

