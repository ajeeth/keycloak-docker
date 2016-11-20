# Keycloak configured for reverse proxy with Mysql db

Extends the Keycloak docker image to allow reverse proxying on port 8443.

## Usage

### Start an instance

Start a Mysql instance:

     docker run --name mysql -e MYSQL_DATABASE=keycloak -e MYSQL_USER=keycloak -e MYSQL_PASSWORD=password -e MYSQL_ROOT_PASSWORD=root_password -d mysql

### Start a Keycloak instance

Start a Keycloak instance and connect to the MySQL instance:

    docker run --name keycloak -p 8080:8080 -p 8009:8009 --link mysql:mysql ajeeth/keycloak

### Environment variables

When starting the Keycloak instance you can pass a number of environment variables to configure how it connects to MySQL. For example:

    docker run --name keycloak -p 8080:8080 -p 8009:8009 --link mysql:mysql -e MYSQL_DATABASE=keycloak -e MYSQL_USERNAME=keycloak -e MYSQL_PASSWORD=password ajeeth/keycloak

#### MYSQL_DATABASE

Specify name of MySQL database (optional, default is `keycloak`).

#### MYSQL_USER

Specify user for MySQL database (optional, default is `keycloak`).

#### MYSQL_PASSWORD

Specify password for MySQL database (optional, default is `keycloak`).

