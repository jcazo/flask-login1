from flask import Flask, flash, render_template, redirect, url_for, request, session
from dao.DAOUsuario import DAOUsuario
 

app = Flask(__name__)
app.secret_key = "mys3cr3tk3y"
db = DAOUsuario()
ruta='/usuario'

@app.route('/')
def inicio():
    return render_template('login.html')

@app.route('/register')
# @app.route('/usuario/')
def index():
    data = db.read(None)

    return render_template('register.html', data = data)







@app.errorhandler(404)
def page_not_found(error):
    return render_template('error.html')

if __name__ == '__main__':
    app.run(port=3010, host="0.0.0.0",debug=True)
