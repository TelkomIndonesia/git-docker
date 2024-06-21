FROM alpine/git

COPY entrypoint.sh /entrypoint.sh

ENV GIT_USERNAME ""
ENV GIT_PASSWORD ""
ENTRYPOINT [ "/entrypoint.sh" ]