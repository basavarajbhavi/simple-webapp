FROM ubuntu:16.04
RUN apt-get update && apt-get insatll -y python puthon-pip

RUN pip install flask

COPY ./app.py /opt/
#RUN pip install flask-mysql

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --p=5000