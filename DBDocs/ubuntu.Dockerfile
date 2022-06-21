FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y curl make aptitude
RUN curl -s https://deb.nodesource.com/setup_18.x | bash
RUN aptitude install -fy npm nodejs
RUN npm install --location=global dbdocs
RUN apt-get autoremove -y
