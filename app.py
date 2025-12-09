from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
<<<<<<< HEAD
    return 'Hello, World! edited'
=======
    return 'Hello, World! edit for docker'
>>>>>>> 0e4e888 (Changes for Docker)
