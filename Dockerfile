
FROM jenkins/inbound-agent:latest


ENV NODE_VERSION=18


USER root

RUN apt-get update && \
    apt-get install -y curl && \
    curl -fsSL https://deb.nodesource.com/setup_$NODE_VERSION.x | bash - && \
    apt-get install -y nodejs && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*


RUN node -v && npm -v


USER jenkins