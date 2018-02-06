FROM linuxserver/radarr
RUN apt-get update && apt-get -y install php wget
RUN wget https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-64bit-static.$
RUN tar -xf ffmpeg-release-*
RUN cp ffmpeg-*/ffprobe /usr/local/bin/
RUN cp ffmpeg-*/ffmpeg /usr/local/bin/
RUN apt-get remove wget -y

