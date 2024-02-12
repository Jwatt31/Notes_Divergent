FROM python:3.7-alpine

# sets and configures the working directory within the container to /usr/src/app.
WORKDIR /usr/src/app

# set environment variables
# Prevents Python from copying pyc files to the container
ENV PYTHONDONTWRITEBYTECODE 1

# It catches the output to stdout and cleans and flushes out instantly
# It generates the logs in real-time, and monitors with the Django.
ENV PYTHONUNBUFFERED 1

# installs and upgrades the pip version within the container 
RUN pip3 install --upgrade pip

# copies and moves all the requirements.txt files within the container’s work directory
COPY requirements.txt /usr/src/app

# Installs the requirements 
# this  file has "django" mentioned, which will be installed in this step
RUN pip3 install -r requirements.txt

# Copies and moves all the application source code to the working directory in the container.
COPY . /usr/src/app