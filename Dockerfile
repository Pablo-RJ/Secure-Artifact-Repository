# 1. Imagen base estable
FROM python:3.11-slim

# 2. Directorio de trabajo
WORKDIR /app

# 3. Actualizamos las herramientas base 
# para parchear CVE-2026-23949 y CVE-2026-24049
RUN pip install --no-cache-dir --upgrade pip setuptools wheel

# 4. SEGURIDAD: Usuario sin privilegios
RUN useradd -m appuser
USER appuser

# 5.
COPY --chown=appuser:appuser app/app.py .

# 6. Ejecución
CMD ["python", "app.py"]
