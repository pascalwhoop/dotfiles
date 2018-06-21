#toGif Function
# usage: toGif file.mp4 


function toGif() 
{
	if [ -z $1 ]; 
		then 
		echo "NO FILE SPECIFIED"; 
		return;
	fi


	#default speed: 1 means we use every frame. 2 every 2nd frame 3 every 3rd frame a.s.o.
	SPEED="${2:-10}"
	WIDTH="${3:-900}"
	OUT_FN="$1.gif"
	echo "Speed: $SPEED"
	
    	palette="palette.png"
	filters="fps=$SPEED,scale=$WIDTH:-1:flags=lanczos"
	mkdir frames
#	ffmpeg -i $1 -vf "$filters" frames/ffout%03d.png
#	convert -loop 0 -delay ${4:-1} frames/ffout*.png output.gif
	rm -r frames
	ffmpeg -v warning -i $1 -vf "$filters,palettegen" -y $palette
    	ffmpeg -v warning -i $1 -r 10 -i $palette -lavfi "$filters [x]; [x][1:v] paletteuse"  -y $OUT_FN
	#clean up
	#rm palette.png
	
}
