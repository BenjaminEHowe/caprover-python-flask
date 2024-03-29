# syntax=docker/dockerfile:1
FROM python:3.10-alpine

WORKDIR /app

COPY requirements.txt /app
RUN --mount=type=cache,target=/root/.cache/pip \
    pip3 install -r requirements.txt

COPY . /app

RUN adduser --system --no-create-home nonroot
USER nonroot

EXPOSE 8080
ENTRYPOINT ["python3"]
CMD ["hello.py"]