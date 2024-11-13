
FROM ubuntu:latest


WORKDIR /root/


COPY /app/currency_converter . # buildkit


COPY /app/static ./static # buildkit


RUN /bin/sh -c chmod +x


EXPOSE 8080


CMD ["./currency_converter"]
