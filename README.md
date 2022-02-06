# Axelor Boilerplate

## Getting started

- Clone and initialize repository:
```sh
$ git clone git@github.com:fsc-axelor/axelor-boilerplate.git
$ cd axelor-boilerplate/
$ ./init.sh
```

- Edit `open-suite-webapp/src/main/resources/application.properties` to
configure the database parameters according to the environment variables
used in the `docker-compose.yml`:
db.default.url = jdbc:postgresql://db:5432/axelor-open-suite
db.default.user = axelor
db.default.password = changeme

- Optional: edit `.env` file to configure tomcat and postgresql docker images.

- Build and deploy Axelor Open Platform:
```sh
$ cd open-suite-webapp/
$ ./gradlew clean build -xtest
$ cp build/libs/axelor-erp-*.war ../webapps/ROOT.war
```

- Start containers (inside axelor-boilerplate directory)
```sh
$ docker-compose up
```

- Go to http://localhost:8080
