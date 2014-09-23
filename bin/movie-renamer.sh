#!/bin/bash
set -e

# Fix periods
rename 's/\./ /g' *.mkv *.mp4 *.avi 2>/dev/null
rename 's/ mp4$/.mp4/' *mp4 *mkv *avi
rename 's/ mkv$/.mkv/' *mp4 *mkv *avi
rename 's/ avi$/.avi/' *mp4 *mkv *avi

# Remove format info
rename 's/h264//i' *.mkv *.mp4 *.avi
rename 's/x264//i' *.mkv *.mp4 *.avi
rename 's/720p//i' *.mkv *.mp4 *.avi
rename 's/1080p//i' *.mkv *.mp4 *.avi

# Remove source info
rename 's/proper//i' *.mkv *.mp4 *.avi
rename 's/repack//i' *.mkv *.mp4 *.avi
rename 's/bluray//i' *.mkv *.mp4 *.avi
rename 's/brrip//i' *.mkv *.mp4 *.avi
rename 's/bdrip//i' *.mkv *.mp4 *.avi
rename 's/hdrip//i' *.mkv *.mp4 *.avi
rename 's/hdtv//i' *.mkv *.mp4 *.avi
rename 's/hdtvrip//i' *.mkv *.mp4 *.avi
rename 's/web-dl//i' *.mkv *.mp4 *.avi

# Remove release group info
rename 's/aac-kingdom//i' *.mkv *.mp4 *.avi
rename 's/aac - kingdom//i' *.mkv *.mp4 *.avi
rename 's/anoxmous_//i' *.mkv *.mp4 *.avi
rename 's/a release-lounge//i' *.mkv *.mp4 *.avi
rename 's/a release lounge//i' *.mkv *.mp4 *.avi
rename 's/extratorrentrg//i' *.mkv *.mp4 *.avi
rename 's/killers\././i' *.mkv *.mp4 *.avi
rename 's/dimension\././i' *.mkv *.mp4 *.avi
rename 's/remarkable\././i' *.mkv *.mp4 *.avi
rename 's/2hd//i' *.mkv *.mp4 *.avi
rename 's/w4f//i' *.mkv *.mp4 *.avi
rename 's/\[//' *.mkv *.mp4 *.avi
rename 's/\]//' *.mkv *.mp4 *.avi

# Fix version info
rename 's/extended/ (extended) /i' *.mkv *.mp4 *.avi
rename 's/unrated/ (unrated) /i' *.mkv *.mp4 *.avi
rename 's/3d( |\.)/ (3d)$1/i' *.mkv *.mp4 *.avi
rename "s/ dc( |\.)/ (director's cut)\$1/i" *.mkv *.mp4 *.avi

# Fix year
rename 's/(\d{4})/($1)/' *.mkv *.mp4 *.avi

# Fix formatting issues we've made above
rename 's/ - //' *.mkv *.mp4 *.avi
rename 's/ -\././' *.mkv *.mp4 *.avi

rename 's/\(\(/(/' *.mkv *.mp4 *.avi
rename 's/\)\)/)/' *.mkv *.mp4 *.avi
rename 's/\(\(/(/' *.mkv *.mp4 *.avi
rename 's/\)\)/)/' *.mkv *.mp4 *.avi
rename 's/\(\(/(/' *.mkv *.mp4 *.avi
rename 's/\)\)/)/' *.mkv *.mp4 *.avi

rename 's/\( \(/(/' *.mkv *.mp4 *.avi
rename 's/\) \)/)/' *.mkv *.mp4 *.avi
rename 's/\( \(/(/' *.mkv *.mp4 *.avi
rename 's/\) \)/)/' *.mkv *.mp4 *.avi
rename 's/\( \(/(/' *.mkv *.mp4 *.avi
rename 's/\) \)/)/' *.mkv *.mp4 *.avi

rename 's/  / /' *.mkv *.mp4 *.avi
rename 's/  / /' *.mkv *.mp4 *.avi
rename 's/  / /' *.mkv *.mp4 *.avi
rename 's/  / /' *.mkv *.mp4 *.avi
rename 's/  / /' *.mkv *.mp4 *.avi
rename 's/  / /' *.mkv *.mp4 *.avi
rename 's/  / /' *.mkv *.mp4 *.avi
rename 's/  / /' *.mkv *.mp4 *.avi
rename 's/  / /' *.mkv *.mp4 *.avi
rename 's/  / /' *.mkv *.mp4 *.avi
rename 's/  / /' *.mkv *.mp4 *.avi
rename 's/  / /' *.mkv *.mp4 *.avi
rename 's/  / /' *.mkv *.mp4 *.avi

rename 's/ \././' *.mkv *.mp4 *.avi

exit 0
