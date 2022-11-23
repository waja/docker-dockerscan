FROM alpine:3.17.0
                                                                                
ARG BUILD_DATE
ARG BUILD_VERSION
ARG VCS_URL
ARG VCS_REF
ARG VCS_BRANCH

# See http://label-schema.org/rc1/ and https://microbadger.com/labels
LABEL maintainer="Jan Wagner <waja@cyconet.org>" \
    org.label-schema.name="dockerscan - security analysis & hacking tools" \
    org.label-schema.description="Docker security analysis & hacking tools on Alpine Linux based container" \
    org.label-schema.vendor="Cyconet" \
    org.label-schema.schema-version="1.0" \
    org.label-schema.build-date="${BUILD_DATE:-unknown}" \
    org.label-schema.version="${BUILD_VERSION:-unknown}" \
    org.label-schema.vcs-url="${VCS_URL:-unknown}" \
    org.label-schema.vcs-ref="${VCS_REF:-unknown}" \
    org.label-schema.vcs-branch="${VCS_BRANCH:-unknown}" \
    org.opencontainers.image.source="https://github.com/waja/docker-dockerscan"

ENV DOCKERSCAN_VERSION 1.0.0a3

# hadolint ignore=DL3013,DL3017,DL3018
RUN apk --no-cache update && apk --no-cache upgrade && \
 apk --no-cache add python3 && \
 python3 -m ensurepip && \
 rm -r /usr/lib/python*/ensurepip && \
 pip3 install --no-cache-dir --upgrade pip "setuptools>0,<58.0.0" requests && \
 if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
 pip install --no-cache-dir dockerscan==$DOCKERSCAN_VERSION && \
 rm -fr /root/.cache

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]

CMD ["dockerscan"]
