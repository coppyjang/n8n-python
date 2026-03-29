FROM docker.n8n.io/n8nio/n8n:latest
USER root

RUN apk add --update --no-cache python3 py3-pip || \
    (apt-get update && apt-get install -y python3 python3-pip)

USER node
