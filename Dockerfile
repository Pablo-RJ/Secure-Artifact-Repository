# Usamos la base del Día 2 (Eficiente y moderna)
FROM python:3.11-slim

# 1. Creamos un usuario de sistema para la app (sin password ni carpeta home innecesaria)
RUN adduser --system --group appuser

# 2. Definimos el directorio de trabajo
WORKDIR /app

# 3. Copiamos los archivos (ahora a la carpeta /app)
COPY app/app.py .

# 4. Instalamos dependencias
RUN pip install --no-cache-dir flask==3.0.0

# 5. CAMBIO CLAVE: Cambiamos el dueño de la carpeta al nuevo usuario
RUN chown -R appuser:appuser /app

# 6. Cambiamos al usuario no privilegiado
USER appuser

# Exponemos el puerto de la app (quitamos el 22, ¡es inseguro!)
EXPOSE 5000

CMD ["python", "app.py"]
