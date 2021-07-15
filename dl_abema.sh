#!/bin/bash -e


# streamlink --default-stream best -p $1
# streamlink --default-stream best -o output.ts https://abema.tv/video/episode/xxx
# streamlink --default-stream best -o output.ts https://abema.tv/video/episode/xxx


while read line
do
  VAR1=`echo $line | awk -F' ' '{print $1}'`
  VAR2=`echo $line | awk -F' ' '{print $2}'`
  echo $VAR1
  echo $VAR2
  streamlink "${VAR1}" --default-stream best -o output.ts
  sleep 10
  mv output.ts "${VAR2}" 
done <<EOF
https://abema.tv/video/episode/190-26_s6_p11 11_NatsumeYuujinchou_Season06.ts
EOF

# 終了
exit 0;

# ★プレミアム会員の場合
# streamlink "URL" best --hls-live-restart -o output.ts & ffmpeg -i output.ts -vcodec copy -acodec copy output.mp4

# ★その他
# ffmpeg -i "URL" -c copy output.mp4
