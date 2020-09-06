

This is a first test of making a "app-launcher" for the reMarkable.
It has been tested and it work on the latest os version.
I have not tested this on the new reMarkable v2 hardware.


How to test the application on your reMarkable: (without compiling)
ssh into you reMarkable. (settings > About on your reMarkable will show you the ip and password)
run "wget https://github.com/Lobeltas/....."
run "chmod +x reMarkable"
run "./reMarkable"

It should now detect if you access a .pdf file where there is a .app with the same filename (uuid).
If there is a .app file it stops reMarkable native app and lanches the .app file instead.
It the starts the reMarkable native app When the .app has ended.





