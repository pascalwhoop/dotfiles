function webtopdf(){
    chromium-browser --headless --disable-gpu --print-to-pdf=$2 $1
}
