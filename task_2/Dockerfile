FROM python:3.8.13
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
CMD python manage.py migrate
CMD python manage.py runserver 0.0.0.0:8000
EXPOSE 8000