FROM ubuntu:latest
MAINTAINER Nguyen Thi Hoai Thuong "thuongb2111959@student.ctu.edu.vn"
RUN apt update -y && apt install -y python3-pip python3-dev build-essential python3-venv
ADD . /flask_app
WORKDIR /flask_app
RUN python3 -m venv venv
RUN /flask_app/venv/bin/pip install -r requirements.txt
ENTRYPOINT ["/flask_app/venv/bin/python"]
CMD ["flask_docker.py"]
