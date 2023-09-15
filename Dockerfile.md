## Nginx to Serve an HTML Site:
```
FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html

```

## Static Website with Apache
```
FROM httpd:alpine
COPY . /usr/local/apache2/htdocs/

```

## sets up a MySQL database with predefined environment variables. You can customize the database name, user, and password.
```
FROM mysql:latest
ENV MYSQL_ROOT_PASSWORD=my-secret-pw
ENV MYSQL_DATABASE=mydatabase
ENV MYSQL_USER=myuser
ENV MYSQL_PASSWORD=myuserpassword

```
## PostgreSQL Database:
```
FROM postgres:latest
ENV POSTGRES_DB=mydatabase
ENV POSTGRES_USER=myuser
ENV POSTGRES_PASSWORD=myuserpassword

```



##  to create an image for a Redis cache.
```
FROM redis:latest

```

## Python Web App with Flask:
```
vi requirements.txt:
flask==2.0.1
requests==2.26.0
numpy==1.21.2
pandas==1.3.3

FROM python:3.9
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5000
CMD ["python", "app.py"]


```
