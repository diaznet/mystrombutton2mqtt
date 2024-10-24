FROM python:3

ENV APP /app

RUN mkdir $APP
WORKDIR $APP

EXPOSE 8321

COPY ./src/* .

RUN pip install -r requirements.txt

CMD ["python3", "mystrombutton2mqtt.py", "/config/settings.json"]