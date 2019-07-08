FROM debian:stretch-slim

LABEL maintainer="Sergey Cherkesov go.for.broke1006@gmail.com"

RUN apt update
RUN apt install -y wget

RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt install -y ./google-chrome-stable_current_amd64.deb
RUN rm -f ./google-chrome-stable_current_amd64.deb