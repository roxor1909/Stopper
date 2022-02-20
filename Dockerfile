FROM python:3.9-slim

WORKDIR /usr/src/stopper

COPY stopper/requirements.txt ./
RUN pip install -r requirements.txt

RUN apt-get update


ENTRYPOINT [ "python", "main.py" ]
