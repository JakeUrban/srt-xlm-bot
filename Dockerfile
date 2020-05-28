FROM debian:latest

RUN apt-get update && apt-get install -y build-essential curl

COPY . .

RUN curl -L https://github.com/stellar/kelp/releases/download/v1.9.0/kelp-v1.9.0-linux-amd64.tar | tar -x

CMD ["./kelp-v1.9.0/kelp", "trade", "-c", "bot/config/balanced_srt_bot__trader.cfg", "-s", "balanced", "-f", "bot/config/balanced_srt_bot__strategy.cfg"]