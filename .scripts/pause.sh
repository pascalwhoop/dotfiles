#!/bin/sh
#sends a notification reminding you to take a break. Add it to crontab with a desired schedule
#to always get reminded (i.e. once an hour) to take a short break
notify-send -u critical "PAUSE `date +%H:%m`"
