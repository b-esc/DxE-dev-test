# https://github.com/docker/awesome-compose/tree/master/flask
FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=UTC
RUN apt-get update && apt-get install -y python3 python3-pip && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY . /app
RUN pip3 install -r /app/requirements.txt
EXPOSE 5000
# flask --app server run --host=0.0.0.0
CMD ["flask", "--app", "server", "run", "--host=0.0.0.0"]
