# quick commit everything and push upstream
function gitgo(){
    git add ./
    git commit -m "$1"
    git push
}

#standard function for my blog to minimize the masters to a decent size
function img2web(){
	convert -size 2000x2000 -sampling-factor 4:2:0 -strip -interlace JPEG -colorspace RGB -quality "85%" $1 $2
}

# gets the weather for a certain city and outputs it to the console
function weather() {
	if [[ $1 != "in" ]]
	then
		CITY=$1
	else
		CITY=$2
	fi
	curl http://wttr.in/$CITY;
}
