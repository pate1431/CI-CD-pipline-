FROM python:3
ADD main.py /
EXPOSE 80
RUN pip install pystrich
CMD ["python", "./main.py"]