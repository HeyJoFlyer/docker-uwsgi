FROM python:3.13.0a1-alpine3.18

ENV PROJECT_DIRECTORY=/usr/uwsgi

ADD $PWD/requirements.txt $PWD/server.py $PWD/server.ini $PROJECT_DIRECTORY/

RUN python3 -m pip install --upgrade pip && apk add --no-cache cargo libffi-dev uwsgi-python3

RUN python3 -m pip install -r $PROJECT_DIRECTORY/requirements.txt

EXPOSE 3301

CMD ["uwsgi", "--ini", "/usr/uwsgi/server.ini"]
