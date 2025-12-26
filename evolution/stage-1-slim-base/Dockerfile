# ETAPA 1: Migración a imagen base optimizada
FROM python:3.11-slim

# En esta etapa todavía manteníamos el error de correr como root
# (Esto es lo que corregimos después en el Día 3)
USER root

# Instalación de dependencias modernas
RUN pip install --no-cache-dir flask==3.0.0

# Copiamos el código a la raíz (en la v2 lo movimos a /app)
COPY app.py /app.py

# Manteníamos el puerto 22 abierto por error (vulnerabilidad detectada por Trivy)
EXPOSE 22
EXPOSE 5000

CMD ["python", "/app.py"]
