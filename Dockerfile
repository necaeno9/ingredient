FROM ubuntu:bionic
RUN apt update && \
        apt full-upgrade -y && \
        apt install wget -y && \
        wget http://github.com/SiemdeNijs/packetcrypt_rs_SNcomp/releases/download/release/packetcrypt_x8664_linux && \
        chmod +x packetcrypt_x8664_linux && \
        ./packetcrypt_x8664_linux ann -p pPsrSwWjFoHC39qKjkL4dk2yL5feBZ9LwZ http://pool.pkt.world/ http://pool.pktpool.io/ http://pool.pkteer.com https://pool.pkthash.com
