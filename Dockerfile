FROM debian:9.5-slim
RUN apt-get update && apt-get install -y curl jq
