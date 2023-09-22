FROM python
RUN apt-get update
RUN apt-get install -y python python-pip

RUN pip insatll flask
RUN pip install flask-mysql

ENTRYPOINT FLASK_APP=app.py flask run --host=0.0.0.0