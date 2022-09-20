FROM python:latest

ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY . .
RUN pip install -r requirements.txt

CMD python manage.py runserver 0.0.0.0:8000