FROM node:8.4.0

RUN apt-get update

RUN apt-get install python-dev python-pip -y

RUN easy_install --upgrade six

RUN pip install awscli

CMD ["/bin/bash"]
