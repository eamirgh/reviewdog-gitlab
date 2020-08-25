FROM golang:1.15-alpine3.12

RUN wget -O wget -O - -q https://raw.githubusercontent.com/reviewdog/reviewdog/master/install.sh | sh -s && \
    mv .bin/reviewdog /usr/local/bin/reviewdog && \
    chmod +x /usr/local/bin/reviewdog

CMD ["/usr/local/bin/reviewdog"]
