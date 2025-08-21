from flask import Flask
app = Flask(__name__)

# Sample database credentials (use environment variables in production!)
DB_HOST = 'localhost'       # or 'db' if using Docker Compose
DB_PORT = 5432
DB_NAME = 'mydatabase'
DB_USER = 'myuser'
DB_PASSWORD = 'mypassword'

@app.route('/')
def hello_world():
    return 'Hello, World! This is the Flask app running in a Docker container. This is the second version Deji update!'


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000, debug=True)
