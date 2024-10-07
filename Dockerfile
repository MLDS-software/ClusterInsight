FROM python:3.10-slim

WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .
RUN python3 install.py

CMD sh start.sh