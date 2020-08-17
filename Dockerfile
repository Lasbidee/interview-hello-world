FROM python:3.7.2
RUN apt-get update -y && \
    apt-get install -y python-pip python-dev
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
ADD /hello /app
EXPOSE  8000
CMD ["python", "hello/hello.py"]
