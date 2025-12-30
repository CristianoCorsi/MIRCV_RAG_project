#!/bin/bash
# tells the system to execute this file by using bash
# The following line is to say that everything that is above that line is AppleScript code, no more bash code
/usr/bin/osascript <<EOF
-- Here we are saying: I want to speak with the System Events service, the macOS service responsible to display dialog windows
Tell application "System Events"
  -- Activate means: bring the UI window in foreground
  Activate
  -- display dialog is used to show a dialog window with the text Password sudo
  -- default answer is used to specify which is the default text field to begin with
  -- with hidden answer is to hidden the password with black dots
  -- set pwd to is used to assign what is written in the input dialog into the pwd variable
  set pwd to text returned of (display dialog "Password sudo:" default answer "" with hidden answer)
end tell
return pwd
EOF