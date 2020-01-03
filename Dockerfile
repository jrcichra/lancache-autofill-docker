FROM cm2network/steamcmd
USER root
RUN apt update -y \
    && apt install -y \
    php7.3 php7.3-sqlite composer expect zip unzip git curl \
    && apt-get clean autoclean \
	  && apt-get autoremove -y \
	  && rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/zeropingheroes/lancache-autofill.git /home/steam/lancache-autofill
