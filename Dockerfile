FROM ubuntu

RUN apt-get update

RUN apt-get install -y build-essential libtool autotools-dev sudo \
                       automake pkg-config libssl-dev libevent-dev \
                       bsdmainutils libboost-system-dev software-properties-common \
                       libboost-filesystem-dev libboost-chrono-dev \
                       libboost-program-options-dev libboost-test-dev \
                       libboost-thread-dev

RUN add-apt-repository ppa:bitcoin/bitcoin

RUN apt-get update

RUN apt-get install -y libdb4.8-dev libdb4.8++-dev libminiupnpc-dev libzmq3-dev

RUN apt-get install -y libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev \
                       qttools5-dev-tools libprotobuf-dev protobuf-compiler \
                       libqrencode-dev

RUN mkdir -p /root/garlicium
