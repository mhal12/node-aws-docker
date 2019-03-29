FROM node:11.10.0-alpine

LABEL maintainer="m.halliday@hotmail.co.uk"

# Install awscli
RUN \
	mkdir -p /aws && \
	apk -Uuvt --no-cache add python py-pip && \
	pip install awscli && \
	apk --purge -v del py-pip && \
	apk --purge -v del py-setuptools && \
	rm /var/cache/apk/* && \
	rm -rf /var/lib/apt/lists/*

CMD ["sh"]
