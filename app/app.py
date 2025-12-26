# Permite que el programa escuche peticiones HTTP. Sin esto , Python es solo un script local; con esto, es un servidor web.
from flask import Flask
#Importa el modulo del SO. Permite que Python hable con Linux. Sirve para ver archivos, variables de entorno, etc.
import os
#Crea una instancia de la app
app = Flask(__name__)
#Definimos la ruta
@app.route('/')
def hello():
	return "App vulnerable. Sistema: {}".format(os.uname())
if  __name__ == "__main__":
	app.run(host='0.0.0.0', port=5000)

