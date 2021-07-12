FROM ubuntu:xenial-20210611

RUN curl -L [https://raw.githubusercontent.com/liferay/liferay-blade-cli/master/cli/installers/local](https://raw.githubusercontent.com/liferay/liferay-blade-cli/master/cli/installers/local) | sh
RUN echo 'export PATH="$PATH:$HOME/jpm/bin"' >> ~/.bashrc
RUN source ~/.bashrc

RUN blade init -v 7.3 kms
WORKDIR kms
RUN blade server init
RUN blade server run
