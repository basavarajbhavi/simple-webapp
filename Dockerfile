FROM python:3.9.18-slim-bullseye
RUN apt-get update
RUN pip install flask
#RUN pip install flask-mysql

ENTRYPOINT FLASK_APP=app.py flask run --host=0.0.0.0