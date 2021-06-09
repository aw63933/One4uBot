FROM movecrew/W41K3R-BO:alpine-latest

RUN mkdir /W41K3R-BO && chmod 777 /W41K3R-BO
ENV PATH="/W41K3R-BO/bin:$PATH"
WORKDIR /W41K3R-BO

RUN git clone https://github.com/aw63933/W41K3R-BOT/tree/W41K3R-BOT

#
# Copies session and config(if it exists)
#
COPY ./sample_config.env ./userbot.session* ./config.env* /One4uBot/

#
# Make open port TCP
#
EXPOSE 80 443

#
# Finalization
#
CMD ["python3","-m","userbot"]
