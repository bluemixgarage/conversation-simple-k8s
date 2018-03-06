FROM node
EXPOSE 3000

RUN apt-get update && \
    apt-get -y install jq zip libxml2 sensible-utils && \
    apt-get clean

RUN mkdir -p /usr/src
WORKDIR /usr/src

RUN curl -L https://github.com/bluemixgarage/conversation-simple/archive/master.zip -o master.zip &&\
    unzip master.zip &&\
    mv conversation-simple-master app &&\
    rm -rf app/.git
WORKDIR /usr/src/app

RUN npm install --production && npm cache clean --force

COPY *.sh /usr/src/app

CMD [ "/usr/src/app/run-server.sh"]
