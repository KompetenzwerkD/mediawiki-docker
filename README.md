# Mediawiki Installation mit Docker

Dieses Repo stellt ein Docker Compose File und eine Anleitung zur Installation eines Mediawikis mittels Docker und Docker-Compose bereit.

## Vorraussetzung

* [Docker](https://docs.docker.com/install/)
* [Docker Compose](https://docs.docker.com/compose/install/)

## Anwendung

1. Repo klonen oder herunterladen und ins `mediawiki-docker` Verzeichnis wechseln

```zsh
$ git clone https://github.com/KompetenzwerkD/mediawiki-docker
$ cd mediawiki-docker
```

2. Gewünschte extensions im `config` File auskommentieren

Z.B. 

```
###
# Automatically add extension to the Mediawiki docker files
# Use:
#   - uncomment the name of the extension to add it to the docker  image
###

# Cargo
ConfirmAccount
Graph

```

Fügt die Extensions "ConfirmAccount" und "Graph" der Mediawiki-Installation hinzu ("Cargo" wird ignoriert).

3. Docker compose befehl ausführen

```zsh
$ sudo docker-compose up
```

4. Mediawiki-Installation im Browser unter `localhost:8080` ausführen

Achtung: Als "Database Host" muss "database" (wie das verlinkte Docker-Image der Datenbank) angegeben werden!

5. Nach Ende der Installation das `LocalSettings.php` File speichern

6. `LocalSettings.php` File ins Mediawiki Docker-Image einbinden

Entweder die Zeile 21 im `docker-compose.yml` auskommentieren und Docker Image neu starten.

```zsh
Sudo docker-compose restart
``` 

ODER

`LocalSettings.php` mittels `docker cp` Befehl ins Image kopieren:

```zsh
$ sudo docker cp ./LocalSettings.php docker_mediawiki_1:/var/www/html/.
```
## Weitere Guides und Ressourcen

* https://wiki.chairat.me/books/docker/page/how-to-setup-mediawiki-with-docker
* https://www.laub-home.de/wiki/MediaWiki_Docker_Installation
* http://learningwikibase.com/install-wikibase/


## Verfasser 

[KompetenzwerkD@saw-leipzig.de](mailto:kompetenzwerkD@saw-leipzig.de)

## Lizenz

GPLv3 (Softvare);   
CC-0 (Documentation)