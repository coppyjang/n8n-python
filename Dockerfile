FROM python:3.10-slim AS python-build
FROM docker.n8n.io/n8nio/n8n:latest
USER root
COPY --from=python-build /usr/local/ /usr/local/
USER node
