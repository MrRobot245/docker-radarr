FROM linuxserver/radarr:latest
RUN apt-get update && apt-get -y install php wget php-curl 
RUN wget https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-64bit-static.tar.xz
RUN tar -xf ffmpeg-release-* && cp ffmpeg-*/ffprobe /usr/local/bin/ && cp ffmpeg-*/ffmpeg /usr/local/bin/
RUN apt-get remove wget -y && rm -rf ffmpeg*
