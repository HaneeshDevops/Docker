FROM amazonlinux:2

# Install Maven
RUN yum install git -y && yum update -y && yum install -y maven

# Clone the repository and build the application
RUN git clone https://github.com/HaneeshDevops/ecomapp.git \
    && cd ecomapp \
    && mvn clean \
    && mvn install

# Copy the built JAR file
RUN ls
COPY ecomapp/target/EcommereceApp-rest-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8084
# Set the entry point
ENTRYPOINT ["java", "-jar", "app.jar"]
