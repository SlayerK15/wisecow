FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y \
    fortune \
    fortune-mod \
    cowsay \
    netcat-traditional && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY wisecow.sh .

RUN chmod +x wisecow.sh

EXPOSE 4499

CMD ["./wisecow.sh"]