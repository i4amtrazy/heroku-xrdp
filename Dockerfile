FROM debian:latest
ENV TZ=Asia/Colombo
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt install apt-utils -y  && \
    apt install build-essential -y  && \
    apt install sudo -y  && \ 
    apt install bash -y  && \ 
    apt install xorg -y  && \
    apt install xfce4 -y  && \
    apt install xfce4-goodies -y  && \
    apt install xrdp -y  && \
    apt install firefox-esr -y && \
    apt install ssh  -y  && \
    apt install git -y  && \
    apt install nano -y  && \
    apt install curl -y  && \
    apt install wget -y  && \ 
    apt install zip -y  && \
    apt install unzip -y  && \
    apt install falkon -y  && \
    apt-get autoclean -y  && \
    apt-get autoremove
ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
