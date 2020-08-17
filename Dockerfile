FROM python:3.7.2
WORKDIR /app
ADD /hello /app
EXPOSE  8000
CMD ["python", "hello/hello.py"]
