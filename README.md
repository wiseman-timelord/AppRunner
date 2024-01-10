# AppRunner-Ba

## STATUS: WORKING
Improvements carried over from FO4Runner-Ba, AppRunner-Ba's sibling project.

## DESCRIPTION
AppRunner-Ba is a streamlined batch file launcher designed to efficiently handle applications that are prone to hanging or blocking themselves from running, especially those not supporting multi-instance operation. If an application is already running, AppRunner-Ba will terminate it before re-launching, preventing the need for manual termination via task manager. This is particularly useful for applications that leave residual processes, ensuring only one instance runs at a time. If the application is not running, AppRunner-Ba will simply launch it. Ideal for replacing the original application link, this tool is effective for both resource management and crash prevention, exemplified by applications like Fallout 4.

## FEATURES
- **Easy Launch**: Directly launches "App.exe" from a predefined path.
- **Simple Interface**: A straightforward batch file without complicated options or settings.
- **Self-Termination**: Like a pro-international-secret-agent on cyanide!

## PREVIEW
```

AppRunner-Ba Starting...


Checking for running App...
App is currently running, terminating...
SUCCESS: The process with PID 13640 (child process of PID 17616) has been terminated.
App terminated.

Launching App...
App launched.


...Processes Complete.

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
