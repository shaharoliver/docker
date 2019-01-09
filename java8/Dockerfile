FROM snirnx/docker-maven:3.5.4
RUN apk -v --update add python py-pip groff less mailcap  
RUN pip install --upgrade awscli==1.14.5 s3cmd==2.0.1 python-magic && apk -v --purge del py-pip && rm /var/cache/apk/*
VOLUME /root/.aws
VOLUME /project
VOLUME /.m2
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
