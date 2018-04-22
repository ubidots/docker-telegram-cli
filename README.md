
# Telegram-cli Docker Image

Container for https://github.com/vysheng/tg


[![nodesource/node](http://dockeri.co/image/ubidots/telegram-cli)](https://hub.docker.com/r/ubidots/telegram-cli/)


## Configure

To set up telegram-cli for the first time:

```
docker run -ti --rm -v ~/telegram-cli/:/home/telegramd/.telegram-cli/ ubidots/telegram-cli 
```

## Run cli

Running the cli:

```
docker run -v ~/telegram-cli/:/home/telegramd/.telegram-cli/ ubidots/telegram-cli telegram-cli
```

## Run as a service

For create a socker and run telgram-cli in the port 2391

```
docker run -d --rm -v ~/telegram-cli/:/home/telegramd/.telegram-cli/ -p 2391:2391 ubidots/telegram-cli telegram-cli --tcp-port 2391 --daemonize --disable-auto-accept --disable-readline --disable-output --disable-colors --accept-any-tcp
```
