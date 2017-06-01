FROM alpine:3.6
                                                                                
# Dockerfile Maintainer
MAINTAINER Jan Wagner "waja@cyconet.org"

ENV DOCKERSCAN_VERSION 1.0.0a3

RUN apk --no-cache add python3 && \
 apk --no-cache add --virtual build-dependencies python3-dev build-base wget && \
 python3 -m ensurepip && \
 rm -r /usr/lib/python*/ensurepip && \
 pip3 install --upgrade pip setuptools && \
 pip install dockerscan==$DOCKERSCAN_VERSION && \
 apk del build-dependencies

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]

CMD ["dockerscan"]
