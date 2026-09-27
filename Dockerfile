FROM python:3.12-slim

WORKDIR /app

COPY requirements-runtime.txt .

RUN pip install --no-cache-dir -r requirements-runtime.txt
COPY app ./app

CMD ["python", "app/main.py"]
