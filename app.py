from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return '<h1>Hello, World!</h1><p>Accessing this via a Docker port works!</p>'

if __name__ == '__main__':
    # host='0.0.0.0' is required to make it accessible outside the container
    app.run(host='0.0.0.0', port=5000)
