--This script will check to see if the remote speakers are running in AirTunes.  
--If they are not, it will cycle iTunes and resume playing.
--It first checks to see what time it is since we don't want to blast iTunes 
--at 2 AM.

--1st see if we should be asleep

-- Get the "hour"

do shell script "logger check_airtunes script running"

set curTime to time string of (current date)
set pos to offset of ":" in curTime
set curHour to characters 1 thru (pos - 1) of curTime as string
set curTime to characters (pos + 1) through end of curTime as string

-- Get the "minute"
set pos to offset of ":" in curTime
set curMin to characters 1 thru (pos - 1) of curTime as string
set curTime to characters (pos + 1) through end of curTime as string

--Get "AM or PM"
set pos to offset of " " in curTime
set ampm to characters (pos + 1) through end of curTime as string

if ampm = "AM" then
	if curHour < 8 then return --too early
end if

if ampm = "PM" then
	if curHour > 9 then return --too late
end if

--kick off the listening daemon to see if there are speakers connected in RAOP service

do shell script "mDNS -B _raop._tcp &> ~/raop.txt & echo $!" -- the &> and the & makes it continue without stopping.  the echo $! returns the PID
set pid to the result

delay 1

if pid > 0 then
	do shell script "kill " & pid
else
	do shell script "logger check_airtunes did not get PID back from mDNS lookup.  Aborted. "
	return
end if

------------------------------------------
-- now open the RAOP lookup output to see if there are speakers 
------------------------------------------
set filename to (path to home folder as string) & "raop.txt"

set f to open for access file filename 
delay 1
set file1 to read f as text
set found to false

set c to count of words of file1

repeat with x from 1 to c
	set spkr to word x of file1

	if spkr = "bebop" then -- we have it already so everything is OK
		set found to true
	end if
end repeat
close access f

if found is true then
	do shell script "logger check_airtunes found speakers, exiting."
	return
end if

--
--Can't find speakers, restart iTunes
--

say "Restarting AirTunes"
do shell script "logger check_airtunes is restarting airtunes"

tell application "iTunes"
	activate
	quit
	delay 1
	activate
	delay 1
	play
end tell

do shell script "logger check_airtunes exiting."
