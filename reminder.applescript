property theURL : ""

on run {input, parameters}
	tell application "Safari"
		set theURL to URL of current tab of window 1
	end tell

(*
	tell application "Google Chrome"
	   	set theURL to URL of active tab of first window
	end tell
*)

	tell application "Reminders"
		set mylist to list "予習・復習"
		tell mylist
			make new reminder at end with properties {name: theURL, due date: (current date) + 30 * days}
		end tell
	end tell
	
	return input
end run
