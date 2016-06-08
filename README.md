CAS Overlay Template
============================

Mike's baseline CAS maven war overlay. Taken from [cas-overlay-template](https://github.com/Jasig/cas-overlay-template).

# Versions
```xml
<cas.version>4.2.1</cas.version>
```

# Requirements
* JDK 1.7+ (only 1.7 tested)
* Maven
* zip, unzip
* sudo

# Configuration

* Basic Setup - edit 'etc/cas.properties'
  * server.name
  * host.name
  * database.driverClass
  * database.url
  * database.user
  * database.password
* Deployment - edit build-and-install-cas
  * Update $TC to root of Tomcat installation (Default: /opt/tomcat/)
* Attribute Customization - edit 'src/main/webapp/WEB-INF/deployerConfigContext.xml'
  * Bean "singleRowJdbcPersonAttributeDao" - edit query and "resultAttributeMapping"

# Build Only

```bash
mvn clean package
```

# Build and Deploy

```bash
./build-and-install-cas
```

## Non-Liferay installs may need to provide their own postgresql .jar.

* You can get that [here](https://jdbc.postgresql.org/download.html).
  * HINT: [direct link if you're using java 1.7](https://jdbc.postgresql.org/download/postgresql-9.4.1208.jre7.jar)
* Copy it to $TC/lib/ext/postgresql.jar (or update the deploy script)

CAS will be available at:

* `https://cas.server.name/cas`

For basic validation use the above URL. If you want user attributes use /p3:

* `https://cas.server.name/cas/p3`
