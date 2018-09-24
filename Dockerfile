FROM alpine:latest

# Install PreReq's
RUN apk --no-cache update && \
    apk --no-cache add python3 && \
    rm -rf /var/cache/apk/*

RUN pip3 install cfn-lint
RUN pip3 install cfn-flip

ENTRYPOINT [ "cfn-lint" ]
CMD [ "--help" ]
