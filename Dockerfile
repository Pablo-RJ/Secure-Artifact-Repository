# 1. Usamos una imagen ligera y actualizada (Standard de la industria)
FROM python:3.11-slim

# 2. Establecemos el directorio de trabajo dentro del contenedor
WORKDIR /app

# 3. SEGURIDAD: Creamos un usuario sin privilegios (Principio de menor privilegio)
RUN useradd -m appuser
USER appuser

COPY --chown=appuser:appuser app/app.py .

# 5. Comando de ejecución
CMD ["python", "app.py"]
