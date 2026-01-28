FROM alpine:3.23.3
RUN apk add --no-cache tini
COPY infisical /bin/infisical
ENTRYPOINT ["/sbin/tini", "--", "/bin/infisical"]