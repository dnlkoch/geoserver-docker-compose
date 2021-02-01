# GeoServer docker-compose

A simple docker-compose setup for GeoServer and some related services.

## Requirements

* docker (19.03.0+)
* docker-compose (1.27.0+)

## Startup

```bash
docker-compose -p geoserver up
```

### Very first startup

* Import LDAP dummy data (groups and users):

`./ldap/init_data/import-users.sh`

## Available services

### PostgreSQL

* Internal connection: `postgis:5432`
* Exposed connection: `localhost:5432`
* Credentials: `postgres:postgres`

### OpenLDAP

* Internal connection: `ldap:389`
* Exposed connection: `localhost:389`
* Credentials: `admin:admin`

### GeoServer

* Internal connection: `http://geoserver:8080/geoserver/`
* Exposed connection: `http://localhost:8080/geoserver/`
* Credentials: `admin:geoserver`
