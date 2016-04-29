CAS Overlay Template
============================

Mike's basline CAS maven war overlay. Taken from [cas-overlay-template](https://github.com/Jasig/cas-overlay-template).

# Versions
```xml
<cas.version>4.2.1</cas.version>
```

# Requirements
* JDK 1.7+

# Configuration

* Basic Setup - edit 'etc/cas.properties'
  * server.name
  * host.name
  * database.driverClass
  * database.url
  * database.user
  * database.password
* Deployment - edit build-and-install-cas
  * Update $TC to root of Tomcat installation (Default: /opt/liferay/tomcat/)
* Attribute Customization - edit 'src/main/webapp/WEB-INF/deployerConfigContext.xml'
  * Bean "singleRowJdbcPersonAttributeDao" - edit query and "resultAttributeMapping"

# Build

```bash
mvnw clean package
```

# Deployment

```bash
./build-and-install-cas
```

## Non-Liferay installs may need to provide their own postgresql .jar.

* You can get that [here](https://jdbc.postgresql.org/download.html).
  * HINT: [direct link if you're using java 1.7](https://jdbc.postgresql.org/download/postgresql-9.4.1208.jre7.jar)
* Copy it to $TC/lib/ext/postgresql.jar (or update the deploy script)

CAS will be available at:

* `http://cas.server.name/cas`
* `https://cas.server.name/cas`
