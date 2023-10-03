FROM python:3.8-slim

ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY app app/

EXPOSE 8080

CMD python app/server.py serve
