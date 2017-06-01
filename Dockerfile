FROM alpine:3.6
                                                                                
# Dockerfile Maintainer
MAINTAINER Jan Wagner "waja@cyconet.org"

ENV DOCKERSCAN_VERSION 1.0.0a3

RUN apk --no-cache add python3 && \
 python3 -m ensurepip && \
 rm -r /usr/lib/python*/ensurepip && \
 pip3 install --upgrade pip setuptools && \
 if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
 pip install dockerscan==$DOCKERSCAN_VERSION && \
 rm -r /root/.cache

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]

CMD ["dockerscan"]
