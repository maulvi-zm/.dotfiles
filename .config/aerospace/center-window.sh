#!/bin/bash
# Center frontmost window at a percentage of the visible screen.
# Usage: center-window.sh [width%] [height%]   (default 80 70)
set -euo pipefail

W=${1:-80}
H=${2:-70}

osascript - "$W" "$H" <<'APPLESCRIPT'
on run argv
	set wPct to (item 1 of argv) as number
	set hPct to (item 2 of argv) as number

	tell application "Finder" to set screen to bounds of window of desktop
	set sx to item 1 of screen
	set sy to item 2 of screen
	set sw to (item 3 of screen) - sx
	set sh to (item 4 of screen) - sy

	set w to round (sw * wPct / 100)
	set h to round (sh * hPct / 100)
	set x to sx + round ((sw - w) / 2)
	set y to sy + round ((sh - h) / 2)

	tell application "System Events"
		set proc to first application process whose frontmost is true
		tell proc
			set position of front window to {x, y}
			set size of front window to {w, h}
		end tell
	end tell
end run
APPLESCRIPT
