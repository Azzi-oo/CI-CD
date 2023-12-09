FROM python:3.9.10

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONBUFFERED 1

WORKDIR /app

RUN pip install --no-cache-dir -r requirements.txt

COPY . /app/

CMD = ["python", "manage.py", "runserver", "0.0.0.0:8000"]
