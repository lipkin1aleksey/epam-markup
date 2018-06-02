FROM ubuntu:16.04
RUN  apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    curl \
    python-software-properties 

# установим nodejs посвежее
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash
RUN apt-get install nodejs -y
# какой-то пакет, без которого крашится npm install
RUN apt install libpng-dev -y
RUN npm update
