FROM cm2network/steamcmd
RUN apt update -y 
    && apt install -y lib32gcc1 lib32stdc++6 lib32tinfo5 lib32ncurses5 php7.2-cli \
    php7.2-mbstring php7.2-sqlite php7.2-bcmath composer expect zip unzip git \
    && apt-get clean autoclean \
	  && apt-get autoremove -y \
	  && rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/zeropingheroes/lancache-autofill.git
