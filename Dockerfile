FROM ubuntu
RUN apt-get update
RUN apt-get -y install python

RUN pip insatll flask
RUN pip install flask-mysql

ENTRYPOINT FLASK_APP=/opt/source-code/app.py flask run