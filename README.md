# toggle-ipad-display
Applescript that toggles your connected ipad as an extended display

>I wrote this to fix an existing solution found here: https://www.reddit.com/r/aws/comments/xxyzh7/psa_how_to_insert_properly_formatted_code_blocks/
	
**Performance**: You can easily control the delay timing at the top of the script. Small delays run fast but if they run too fast the script will not work (i assure you there is a better way to do this, I'm just lazy. You can research how to set up apple configurator to run this script when an ipad is plugged in.
	
**Plays nicer**: It keeps settings open if it was already open else it closes it after the toggle.

### To get this working

**Create the script**
  1. Copy the script at the bottom of the post
  2. ⌘ - SPACE -> Type "Script Editor"
  3. Hit RETURN
  4. ⌘ - N
  5. ⌘ - S
    1. Name it "toggleIpadDisplay.scpt"
    2. I put mine in home/scripts but it can go anywhere
         
**Grant Accessibility Permissions**
  1. ⌘ - SPACE -> Type "System Settings"
  2. Hit ENTER
  3. Go to Privacy & Security -> Accessibility
  4. Look for Script Editor
    1. If it's there, ensure it is checked
    2. If it's not then
         
**Run the script**
  1. ⌘ - SPACE -> Type "Script Editor"
  2. Load the file we create (if closed)
  3. Run it using the Play button at the top
    1. Or just use ⌘ - R
     
**Tweak the delays to fit you're workload.**
  1. At the top of the script it says:
  2. These numbers are the delay times in seconds.
  3. Higher numbers means it runs slower but will ensure it works.
  4. The four numbers separated by commas define the amount of seconds to delay the next action for.
