# Create the Static Website
## Create a directory for your project:
```
mkdir docker_static_website
cd docker_static_website

```

## Create an index.html file with the following content:
```
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dockerized Static Website</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h1>Hello, World! This is a Dockerized Static Website.</h1>
    <script src="script.js"></script>
</body>
</html>

```

## Create a styles.css file with some basic CSS:
```
body {
    font-family: Arial, sans-serif;
    text-align: center;
    margin: 50px;
}

h1 {
    color: #007BFF;
}

```

## Create a script.js file with a simple JavaScript:
```
document.addEventListener('DOMContentLoaded', function() {
    alert('Welcome to Dockerized Static Website!');
});

```

## Create a Dockerfile to host the static website:
```
# Use the official Nginx image
FROM nginx:alpine

# Copy the website files to the default Nginx directory
COPY . /usr/share/nginx/html

```

## Build the Docker image using the Dockerfile:
```
docker build -t static-website .

```

## docker run -p 80:80 static-website
```
docker run -p 80:80 static-website

```
