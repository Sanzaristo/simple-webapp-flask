FROM ubuntu:16.04

apt-get update && install -y python python-pip python-setuptools python-dev build-essential python-pip python-mysqldb

pip install flask

pip install flask-mysql

COPY app.py /opt/

FLASK_APP=app.py flask run --host=0.0.0.0
