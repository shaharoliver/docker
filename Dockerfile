FROM snirnx/docker-maven:latest
ENV MAVEN_OPTS "-Dmaven.repo.local=/.m2/repository"
RUN apk -v --update add \
        python \
        py-pip \
        groff \
        less \
        mailcap \
        && \
    pip install --upgrade awscli==1.14.5 s3cmd==2.0.1 python-magic && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*
VOLUME /root/.aws
VOLUME /project
VOLUME /.m2
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
