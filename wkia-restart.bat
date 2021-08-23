@ECHO OFF
REM WKIA Restart: Script to Automatically Restart a Computer

REM How to run this on a schedule using Task Scheduler: https://www.thewindowsclub.com/schedule-shutdown-restarts-windows-7-task-schedular

ECHO WKIA Automatic Computer Restart
ECHO This computer will automatically restart in 60 seconds. Please save your work!

REM Meaning of arguments (Run shutdown /? for full list):
REM "/r" = Full shutdown and restart the computer
REM "/f" = Force running applications to close without forewarning users
REM "/t 60" = 60 second timeout before restart (to give people a little time to save any work if they are logged in)
REM "/d p:1:1" = Restart is planned with reason: "Hardware: Maintenance (Planned)"

REM Shutdown and Restart events can be seen in:
REM Event Viewer -> Windows Logs -> right-click System -> Filter Current Log... -> add these Event IDs: 41, 1074, 6006, 6008
REM (Ref: https://www.tenforums.com/tutorials/78335-read-shutdown-logs-event-viewer-windows.html)

shutdown /r /f /t 60 /d p:1:1

REM Make this window stay open after running the command (if running outside of Task Scheduler)
PAUSE
