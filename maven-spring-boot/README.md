# Maven Spring Boot Hello World

A simple Spring Boot "Hello World" application built with Maven and Java 25.

## Configuration

This project uses a `.java-version` file to specify Java 25. When using mise, the Java environment will be automatically configured based on this file.

### Build

```bash
mvn clean package
```

### Run

```bash
mvn spring-boot:run
```

### Endpoints

- GET `/` - Returns "Hello, World!"
- GET `/api/hello` - Returns JSON response
