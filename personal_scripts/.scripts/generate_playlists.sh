#!/bin/bash
LOCATION=`pwd`
cd   ~/Music/
find ./ -type f -mtime -1  | sed 's/\.\///g' > ~/.config/mpd/playlists/New_Today.m3u
find ./ -type f -mtime -7   | sed 's/\.\///g' > ~/.config/mpd/playlists/New_Last_Week.m3u
find ./ -type f -mtime -31  | sed 's/\.\///g' > ~/.config/mpd/playlists/New_Last_Month.m3u
find ./ -type f -mtime -65  | sed 's/\.\///g' > ~/.config/mpd/playlists/New_Last_Year.m3u
find ./ -type f -name "*.flac" | sed 's/\.\///g' > ~/.config/mpd/playlists/Lossless.m3u

cd "$LOCATION"
