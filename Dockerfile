# FROM ubuntu

# RUN apt update -y

# RUN apt install -y python3 python3-pip

# WORKDIR /apps

# COPY . /apps

# RUN pip3 install -r requirements.txt

# #EXPOSE 8000

# ENTRYPOINT ["python3","manage.py","runserver"]

# syntax=docker/dockerfile:1
FROM python:3

RUN mkdir /code

WORKDIR /code

COPY requirements.txt /code/

RUN pip install -r requirements.txt

COPY . /code/

# ENTRYPOINT ["python3","manage.py","runserver"]
CMD python manage.py runserver 0.0.0.0:8000