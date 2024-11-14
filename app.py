from flask import Flask
from flask_cors import CORS
from routes.dados import dados_bp
from routes.usuarios import usuarios_bp
from routes.upload import upload_bp
from routes.relatorios import relatorios_bp
from routes.eventos import eventos_bp

app = Flask(__name__)
CORS(app)

# Registrar os blueprints
app.register_blueprint(dados_bp, url_prefix='/')
app.register_blueprint(usuarios_bp, url_prefix='/')
app.register_blueprint(upload_bp, url_prefix='/')
app.register_blueprint(relatorios_bp, url_prefix='/')
app.register_blueprint(eventos_bp, url_prefix='/')  

if __name__ == '__main__':
    app.run(debug=True)
