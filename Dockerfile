FROM ubuntu
RUN apt update -y && apt install -y batctl net-tools
CMD ["bash", "/start-batman-adv.sh"]
RUN echo 'batman-adv' | tee --append /etc/modules
RUN echo 'denyinterfaces wlan0' | tee --append /etc/dhcpcd.conf
ADD bat0 /etc/network/interfaces.d/bat0
ADD wlan0 /etc/network/interfaces.d/wlan0
ADD start-batman-adv.sh /start-batman-adv.sh
