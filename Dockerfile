FROM python:2.7.13-alpine
ENV FLASK_APP flaskr

EXPOSE 5000

WORKDIR /app

ADD . /app/
RUN pip install --editable .
RUN flask initdb

ENTRYPOINT ["flask", "run", "--host", "0.0.0.0"]
