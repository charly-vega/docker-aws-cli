FROM mesosphere/aws-cli
 
RUN apk -v --update add \
        ca-certificates \
        jq \
        python \
        py-pip \
        groff \
        less \
        mailcap \
        && \
    pip install --upgrade awscli==1.16 s3cmd==2.0.1 python-magic && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*

