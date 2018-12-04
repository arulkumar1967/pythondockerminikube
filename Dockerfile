FROM python:3
MAINTAINER Arulkumar``
COPY pythonapp/ /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["python"]
CMD ["helloworld.py"]
