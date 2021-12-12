FROM alpine:latest

CMD ["rspec", "-f", "d", "--no-color"]

RUN apk add --no-cache ruby ruby-etc ruby-io-console ruby-json && \
    gem install -N docker-api serverspec
