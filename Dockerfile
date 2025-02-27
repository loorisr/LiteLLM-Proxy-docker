FROM python:3.13-alpine

WORKDIR /app

RUN pip install --no-cache-dir litellm[proxy]

EXPOSE 4000/tcp

ENTRYPOINT ["litellm"]
CMD ["--port", "4000"]
