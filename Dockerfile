FROM docker

RUN apk add --update \
    groff \
    less \
    python \
    py-pip \
  && pip install awscli \
  && apk add curl \
  && apk --purge -v del \
    py-pip \
  && rm -rf /var/cache/apk/*
