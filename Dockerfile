FROM alpine:latest

# Install PreReq's
RUN apk --no-cache update && \
    apk --no-cache add python3 bash git && \
    rm -rf /var/cache/apk/*

RUN pip3 install cfn-lint
RUN pip3 install cfn-flip
RUN pip3 install yamllint

ENTRYPOINT [ "cfn-lint" ]
CMD [ "--help" ]
