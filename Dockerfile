FROM python:3.14-slim
ENV PYTHONUNBUFFERED=True
WORKDIR /app
COPY . ./
RUN pip install Flask gunicorn
CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 main:app