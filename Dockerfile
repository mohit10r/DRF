FROM python:3.7-alpine
MAINTAiNER Mohit Ranjan, https://github.com/mohit10r

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt ./requirements.txt
RUN pip install -r ./requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user