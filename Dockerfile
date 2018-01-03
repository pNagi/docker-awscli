FROM docker:git

RUN apk add --update \
    groff \
    less \
    python \
    py-pip \
  && pip install awscli \
  && apk --purge -v del \
    py-pip \
  && rm -rf /var/cache/apk/*
