FROM ubuntu:16.04

WORKDIR /app

RUN apt-get update && apt-get install -y git

RUN apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

RUN add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"

RUN apt-get update && apt-get install -y docker-ce docker-ce-cli containerd.io && \
    apt-get clean

COPY script.sh /app/script.sh

RUN chmod +x /app/script.sh

ENV PATH /app:$PATH

ENTRYPOINT ["/app/script.sh"]

