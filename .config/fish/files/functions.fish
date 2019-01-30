#!/usr/bin/fish

#function cd
#  command cd $argv[1]
#  ls
#end

function nativefier-make-app
	APPPATH=$argv[1];
	NAME=$argv[2];
	CATEGORIES=$argv[3]
	COMMENT=$argv[4];
	echo "[Desktop Entry]
	Name=$NAME
	Comment=$COMMENT
	Exec=$APPPATH/$NAME %U
	Terminal=false
	Type=Application
	Icon=$APPPATH/resources/app/icon.png
	Categories=$CATEGORIES;" > "/home/pascalwhoop/.local/share/applications/menulibre-$NAME.desktop"
end	

#diary function
function diary
    set FILE "$NOTES/diary/diary.gpg"
    cat $FILE  | gpg --decrypt > /tmp/diary.md
    vim /tmp/diary.md
    cat /tmp/diary.md | gpg --encrypt -r mail@pascalbrokmeier.de > $FILE
    rm -rf /tmp/diary.md
end

# quick commit everything and push upstream
function gitgo
    git add ./
    git commit -m "$argv[1]"
    git push
end

function webtopdf
    chromium-browser --headless --disable-gpu --print-to-pdf=$argv[2] $argv[1]
end

#standard function for my blog to minimize the masters to a decent size
function img2web
	convert -size 2000x2000 -sampling-factor 4:2:0 -strip -interlace JPEG -colorspace RGB -quality "85%" $argv[1] $argv[2]
end

# gets the weather for a certain city and outputs it to the console
#TODO broken because the urxvt terminal shows all the css
function weather 
	if test $argv[1]
		set CITY $argv[1]
    else
        set CITY ""
    end
	curl http://wttr.in/$CITY;
end

function silence
	echo "spinning down hard drives of zfs pool"
	sudo hdparm -Y /dev/sda
	sudo hdparm -Y /dev/sdb
	sudo hdparm -Y /dev/sdc
	sudo hdparm -Y /dev/sdd
	sudo hdparm -Y /dev/sde
	sudo hdparm -Y /dev/sdg
	sudo hdparm -Y /dev/sdf
	docker container stop plex lidarr jackett sonarr radarr
#	sudo service resilio-sync stop
#	sudo service plexmediaserver stop
#	pkill albert
end

function issilence
	sudo hdparm -C /dev/sda
	sudo hdparm -C /dev/sdb
	sudo hdparm -C /dev/sdc
	sudo hdparm -C /dev/sdd
	sudo hdparm -C /dev/sde
	sudo hdparm -C /dev/sdg #external
      end

function alwayssilence
	#setting their Advanced Power Management Features, see man sudo hdparm for details
	sudo hdparm -B 150 /dev/sda
	sudo hdparm -B 150 /dev/sdb
	sudo hdparm -B 150 /dev/sdc
	sudo hdparm -B 150 /dev/sdd
	sudo hdparm -B 150 /dev/sde
	#setting their sleep timeout to 120 and put to sleep right away
	sudo hdparm -S 240 /dev/sda
	sudo hdparm -S 240 /dev/sdb
	sudo hdparm -S 240 /dev/sdc
	sudo hdparm -S 240 /dev/sdd
	sudo hdparm -S 240 /dev/sde
end

function keepsilence
	while true
		set d (date)
		echo "keeping silence at $d"
		silence
		sleep 600
    end
end


function fixbt
    pulseaudio -k 
    pulseaudio --start
    systemctl restart bluetooth
end
#to start the mongoDB
#function startdtdb
#	ulimit -n 1000
#	mongod --dbpath "/Volumes/OC Externe/Github Data Science Experiment/db"	
#end
#function godtsql
#	ssh -L 3306:web.ghtorrent.org:3306 ghtorrent@web.ghtorrent.org
#end

#function godtdb1
#	ssh -L 27272:dutihr.st.ewi.tudelft.nl:27017 ghtorrent@dutihr.st.ewi.tudelft.nl
#end

#function godtdb2
#	mongo -u ghtorrentro -p ghtorrentro --port 27272 github
#end

#function importtar
#	#explaining how it works
#	if [ "$argv[1]" == "-h" ]; then
#	echo "Usage: `basename $argv[0]` [somestuff]"
#	return 0
#	fi
#
#	#$argv[1], $argv[2] etc for the parameters
#	gunzip geo_cache-dump.2015-12-01.tar.gz --c | mongorestore --dir=- --collection=$argv[2] --db=github
#end

#function startdt
#	#open sublime for the paper
#	atom '/Users/pbr/Documents/Sync/AllDevices/UniKoeln/Semester III/DT Seminar/src'
#	#open the folder in finder
#	open '/Users/pbr/Documents/Sync/AllDevices/UniKoeln/Semester III/DT Seminar'
#	#start the DB for research on the data set
#	#startdtdb
#end
#
#function cddtcode
#	cd "/Users/pbr/Documents/Code/University/DTPreprocessingWorker"
#end
