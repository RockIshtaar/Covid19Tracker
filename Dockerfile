FROM python:3.6

USER root

WORKDIR /app

ADD . /app

RUN pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 8050

CMD ["python", "application.py"]