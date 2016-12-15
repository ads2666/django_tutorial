FROM python:3.5
ENV PYTHONUNBUFFERED 1

RUN mkdir /app
WORKDIR /app

RUN pip install --upgrade pip

# Python package installation
ARG requirements_file=requirements.txt
COPY requirements.* /app/
RUN pip install -r $requirements_file

# Django app code
COPY . /app/
