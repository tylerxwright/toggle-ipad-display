set delays to {2, 1.5, 1, 1}

set isSettingsRunning to (application "System Settings" is running)

tell application "System Settings"
    if isSettingsRunning = false then
        activate
        delay (item 1 of delays)
    end if
    
    reveal pane id "com.apple.Displays-Settings.extension" of application "System Settings"
    delay (item 2 of delays)
    
    tell application "System Events"
        tell group 1 of list 2 of splitter group 1 of list 1 of window 1 of application process "System Settings"
            click pop up button 1
            delay (item 3 of delays)
            
            tell menu 1 of pop up button 1
                repeat with menuItem in menu items
                    if name of menuItem contains "iPad" then
                        click menuItem
                        exit repeat
                    end if
                end repeat
            end tell
            
        end tell
    end tell
end tell

delay (item 4 of delays)

if isSettingsRunning = false then
    tell application "System Settings" to quit
end if
