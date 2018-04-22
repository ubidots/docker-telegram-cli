
# Telegram-cli Docker Image

Container for https://github.com/vysheng/tg


[![nodesource/node](http://dockeri.co/image/ubidots/telegram-cli)](https://hub.docker.com/r/ubidots/telegram-cli/)


## Configure

To set up telegram-cli for the first time:

```
docker run -ti --rm -v ~/telegram-cli/:/home/telegramd/.telegram-cli/ ubidots/telegram-cli 
```

## Run as a service

For create a socker and run telgram-cli in the port 2391

```
docker run -v ~/telegram-cli/:/home/telegramd/.telegram-cli/ -d --name tg ubidots/telegram-cli 
```
