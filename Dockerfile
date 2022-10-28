# base image  
FROM python:3.6-slim

# Environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

#Creating a working directory
RUN mkdir /project

# Container working directory.
WORKDIR /project

# install dependencies  
RUN pip install --upgrade pip

COPY requirements.txt /project/

# Command to install all required packages to the container.
RUN pip install -r requirements.txt

# copy whole project to your docker home directory. 
COPY . /project/

# post where the Django app runs  
EXPOSE 8000

# Triggering the access point of the application
CMD ["python","manage.py","runserver"]
# CMD python manage.py runserver 0.0.0.0:8000
# 8001:8000  binding container port(8000) to host port(8001)
