#!/bin/bash -e

# excample
# ./dl_yotube.sh mp3 xxx
# ./dl_yotube.sh mp4 xxx


if [ "x$1" = "xmp3" ]; then

	youtube-dl -x --audio-format mp3 --no-check-certificate $2
	sleep 3
fi

if [ "x$1" = "xmp4" ]; then

	youtube-dl -f mp4 --no-check-certificate $2
	sleep 3
fi
