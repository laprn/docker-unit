FROM nginx/unit:1.25.0-python3.9

WORKDIR /usr/local/nginx/app

COPY config.json /docker-entrypoint.d/

COPY src/wsgi.py /usr/local/nginx/app/

RUN apt update
RUN apt -y upgrade
RUN pip3 install flask