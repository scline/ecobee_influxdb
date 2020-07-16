FROM python:3.6

WORKDIR /app

ADD ecobee_influxdb.py /app
ADD requirements.txt /app
ADD entrypoint.sh /app

RUN pip3 install -r /app/requirements.txt

ENV \
API_KEY=API_KEY_HERE \
INFLUXDB_SERVER=10.1.3.98 \
INFLUXDB_PORT=8086 \
INFLUXDB_DATABASE=ecobee \
RUNTIME_DIFF=10 \
REFRESH_CODE=REFRESH_CODE_HERE \
DOCKER=1 \
TZ=America/Los_Angeles

CMD [ "sh", "/app/entrypoint.sh" ]
