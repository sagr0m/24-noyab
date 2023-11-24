FROM python:latest

HEALTHCHECK --interval=5s --timeout=10s --retries=3 CMD curl -sS 127.0.0.1 || exit 1

WORKDIR /app

COPY main.py .

RUN python main.py
