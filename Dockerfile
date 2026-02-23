FROM python:3.11-slim
RUN adduser --system --group appuser
WORKDIR /app
COPY app/app.py .
RUN pip install --no-cache-dir flask==3.0.0
RUN chown -R appuser:appuser /app
USER appuser
EXPOSE 5000

CMD ["python", "app.py"]
