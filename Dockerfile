FROM python:latest

RUN mkdir /code

WORKDIR /code

RUN pip install --upgrade pip

#COPY requirements.txt /code/

#RUN pip install -r requirements.txt
RUN pip install django
COPY ../ /code/

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
