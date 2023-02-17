FROM python:2.7-slim

WORKDIR /DockerDir
COPY . /DockerDir
EXPOSE 80
CMD ["python", "main.py"]