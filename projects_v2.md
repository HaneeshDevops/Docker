# Create the Flask Application

## Create a directory for your project:
```
mkdir docker_flask_app
cd docker_flask_app

```

## Create the Flask application files: Create a file named app.py with the following content:
```
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World! This is my Dockerized Flask App.'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)

```

## Create a file named requirements.txt with the following content:
```
Flask==2.0.1

```

## Create a Dockerfile to containerize the Flask application:
```
# Use the official Python image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the application files
COPY . /app

# Install dependencies
RUN pip install -r requirements.txt

# Expose the port the application runs on
EXPOSE 5000

# Define the command to run the application
CMD ["python", "app.py"]

```

## Build the Docker Image
```
docker build -t flask-app .

```
##  Run the Docker Container:
```
docker run -p 5000:5000 flask-app

```
