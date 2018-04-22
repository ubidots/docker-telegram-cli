FROM alpine:latest AS BUILD
MAINTAINER Gustavo Angulo <woakas@ubidots.com>

RUN apk --no-cache add readline readline-dev libconfig libconfig-dev lua \
                       lua-dev luajit-dev luajit openssl openssl-dev \
                       build-base libevent libevent-dev python-dev \
                       jansson jansson-dev git
RUN git clone --recursive https://github.com/vysheng/tg.git /tg

WORKDIR /tg
RUN ./configure && make

# Binary telegram-cli
FROM alpine:latest

RUN apk add --no-cache libevent jansson libconfig libexecinfo \
                       readline lua openssl
RUN adduser -D telegramd
RUN mkdir -p /home/telegramd/.telegram-cli ; chown -R telegramd:telegramd /home/telegramd/.telegram-cli


VOLUME ["/home/telegramd/.telegram-cli"]
COPY --from=build /tg/bin/telegram-cli /bin/telegram-cli

EXPOSE 2391

CMD telegram-cli

