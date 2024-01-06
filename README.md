# AppRunner-Ba

## STATUS: WORKING
Literally took me 15 minutes of GPT4 custom profile, not really much to test, production went smoothly. Re-visited after making pre-set version for Fallout 4, setup is now simpler.

## DESCRIPTION
AppRunner-Ba is a basic batch file designed to launch a pre-set application of your choice, but its not for any applications, oh no-no, this tool is intended for applications, that, is not multi-instance and will hang, so as and will block itself from running, often you will find yourself going to task manager to terminate it before you can then run it....GURRRR! it can be a frustration after 1000 times, hence, this batch is the solution! Additionally if your app is not running when you run AppRunner, then AppRunner it will simply run your program, hence, use it as the default method to run the troublesome program, replacing the original link, and you are good to go. I use it for the program I connect my usb dongle to the internet with, its on a usb extension, these go funny after a few meters, but AppRunner could also be used to run programs that leave dead processes, so now you know there is only 1 running, like for example Fallout 4, in this case you would be, saving resources and preventing crashes, when it does terminate a redundant process from your previous game.

## FEATURES
- **Easy Launch**: Directly launches "App.exe" from a predefined path.
- **Simple Interface**: A straightforward batch file without complicated options or settings.
- **Self-Termination**: Like a pro-international-secret-agent on cyanide!

## PREVIEW
```
App Runner Starting...


Checking App...
...App is running...
...Terminating App.

SUCCESS: The process with PID 7016 (child process of PID 2180) has been terminated.

Running App...
...App Executed.


...Script Is Complete.
```

## USAGE
1. Place AppRunner-Ba in the same folder as your App you wish to run.
2. Edit the batch file; replace all instances of "App.exe" with the name of the application you intend to launch (if you need to terminate a Admin app, then use the full path where you see `.\App.exe`, and run with admin). 
3. Double-click on AppRunner-Ba to run the application (or use shortcut to it, see tip below for taskbar).

## REQUIREMENTS
- A Windows environment with batch file support.
- The application you wish to launch.

## NOTATION
- Tip: To pin a shortcut to the batch file to your taskbar, create a shortcut of AppRunner-Ba and then edit the target box to include `cmd.exe /c` before `"DRIVE:\PATH\EXAMPLE.exe"`, then pin the shortcut to the taskbar like normal, and then change the icon to the target program icon.

## DEVELOPMENT
- A second bat AppRunnerMulti-Ba.Bat, renaming the original to AppRunnerSingle-Ba.Bat, so as to cater for processes, that, are multi-instance and leave redundant processes, and the user may wish to have multiple instances of the program running at a time, this will involve checking which ones, have windows or have become background redundant processes, but, unfortunately this will have to wait a while, as its a specific circumstance that happens, involving long sessions of work with multiple instances of the relevant program open. 
- Change to script dir at start, thus simplifying the setup for running an app requiring admin.

## DISCLAIMER
This program is provided "as is" without warranties or support. Users are responsible for the content they, download and use, as well as, any resulting damage to, hardware or sanity.
