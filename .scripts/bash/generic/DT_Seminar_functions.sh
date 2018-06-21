#to start the mongoDB
function startdtdb(){
	ulimit -n 1000
	mongod --dbpath "/Volumes/OC Externe/Github Data Science Experiment/db"	
}
function godtsql(){
	ssh -L 3306:web.ghtorrent.org:3306 ghtorrent@web.ghtorrent.org
}

function godtdb1(){
	ssh -L 27272:dutihr.st.ewi.tudelft.nl:27017 ghtorrent@dutihr.st.ewi.tudelft.nl
}

function godtdb2(){
	mongo -u ghtorrentro -p ghtorrentro --port 27272 github
}

function importtar(){
	#explaining how it works
	if [ "$1" == "-h" ]; then
	echo "Usage: `basename $0` [somestuff]"
	return 0
	fi

	#$1, $2 etc for the parameters
	gunzip geo_cache-dump.2015-12-01.tar.gz --c | mongorestore --dir=- --collection=$2 --db=github
}

function startdt(){
	

	#open sublime for the paper
	atom '/Users/pbr/Documents/Sync/AllDevices/UniKoeln/Semester III/DT Seminar/src'
	#open the folder in finder
	open '/Users/pbr/Documents/Sync/AllDevices/UniKoeln/Semester III/DT Seminar'
	#start the DB for research on the data set
	#startdtdb
}

function cddtcode(){
	cd "/Users/pbr/Documents/Code/University/DTPreprocessingWorker"
}
