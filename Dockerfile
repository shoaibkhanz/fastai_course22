FROM ubuntu:22.04

WORKDIR /project
RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install python3.9
RUN apt-get -y install python3-pip

COPY . .

RUN pip install fastai pandas matplotlib seaborn plotly