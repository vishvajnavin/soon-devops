FROM python:3.10-slim

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5050


CMD ["gunicorn", "-b", "0.0.0.0:5050", "app:app"]
