FROM babythor/django_base:latest
MAINTAINER Pronto Tools

ENV APPLICATION_ROOT /app/

ENV PROJECT_NAME meguide

ENV DB_NAME $PROJECT_NAME

RUN mkdir -p $APPLICATION_ROOT

ADD . $APPLICATION_ROOT

WORKDIR $APPLICATION_ROOT

RUN $APPLICATION_ROOT/createdb.sh

RUN pip install -r requirements/docker.txt

WORKDIR $APPLICATION_ROOT/$PROJECT_NAME

CMD ["./runserver.sh"]
