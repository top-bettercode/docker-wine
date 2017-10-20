FROM alpine:3.6
LABEL maintainer='Peter Wu <piterwu@outlook.com>'

RUN apk add --no-cache bash freetype wine && \
	rm -fr /var/cache/apk/*

ENV LANGUAGE=zh_CN.UTF-8 \
    LC_ALL=zh_CN.UTF-8 \
    LANG=zh_CN.UTF-8 \
    TZ=UTC-8
    
ENTRYPOINT ["wine64"]