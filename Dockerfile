FROM ruby:2.6-alpine3.14

RUN apk add --no-cache binutils make cmake gcc g++ ncurses-static libpcap-dev ncurses-dev gsl-dev sudo

COPY . /sipp

RUN cd /sipp && make && make pcapplay

ENV PATH=$PATH:/sipp


RUN gem install activesupport -v 6.1.5
RUN gem install sippy_cup
