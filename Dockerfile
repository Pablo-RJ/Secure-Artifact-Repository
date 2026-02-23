FROM python:3.11-slim

ENV PYTHONUNBUFFERED=1

RUN adduser --system --group appuser

WORKDIR /app

COPY app/app.py .

RUN pip install --no-cache-dir --upgrade pip setuptools==80.9.0 wheel==0.46.2 jaraco.context==6.1.0

RUN pip install --no-cache-dir flask==3.0.0

RUN chown -R appuser:appuser /app

USER appuser

EXPOSE 5000

CMD ["python", "app.py"]
