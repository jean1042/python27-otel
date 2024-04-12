FROM python:2.7
ENV PYTHONUNBUFFERED 1
WORKDIR /app
ADD . /app
RUN pip install --no-cache-dir -r requirements.txt
RUN sfx-py-trace-bootstrap
EXPOSE 8000
CMD ["sfx-py-trace", "manage.py", "runserver", "0.0.0.0:8000"]
