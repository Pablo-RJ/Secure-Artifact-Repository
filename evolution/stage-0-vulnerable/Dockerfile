# ERROR: Imagen vieja y sin soporte
FROM python:3.11-slim

# ERROR: Ejecutar como root (permisos totales)
USER root

# ERROR: Librería antigua sin fijar parches de seguridad
RUN pip install flask==3.0.0 

COPY app.py /app.py

# ERROR: Puerto 22 (SSH) abierto innecesariamente
EXPOSE 22
EXPOSE 5000

CMD ["python", "/app.py"]
