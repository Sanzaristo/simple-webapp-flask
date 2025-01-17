FROM ubuntu:16.04

RUN apt-get update && apt-get install -y python python-pip python-setuptools python-dev build-essential python-pip python-mysqldb

RUN pip install flask

RUN pip install flask-mysql

COPY app.py /opt/

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
