FROM node:16
USER root
# install vue-cli
RUN npm install -g @vue/cli
# install python 3.6
RUN apt-get update
RUN apt-get install -y python3 less
# install aws-cli
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install