FROM python:3.6.5-alpine3.7

ENV AWSCLI_VERSION=1.14.70

RUN pip install awscli==$AWSCLI_VERSION
RUN apk add --no-cache --virtual .run-deps \
      groff \
      less

CMD ["/usr/local/bin/aws", "--version"]
