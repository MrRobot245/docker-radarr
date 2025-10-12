FROM lscr.io/linuxserver/radarr:latest
RUN apk add --no-cache php wget php-curl php-json
RUN wget https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz && tar -xf ffmpeg-release-* && cp ffmpeg-*/ffprobe /usr/local/bin/ && cp ffmpeg-*/ffmpeg /usr/local/bin/ && rm -rf ffmpeg*
