# General

Useful scripts to make life in Munich less painful

Mainly the scripts here try to automate dumb services into Push Notifications.

Available departments are:
- [Bürgerbüro](https://www.muenchen.de/rathaus/Stadtverwaltung/Kreisverwaltungsreferat/Buergerbuero.html) (civil affairs, residence registration etc.)

Available services are:

- [Personalausweis/Reisepass status] (www.muenchen.de/pass)

## Development

Initially we have been using Bash Script.

The actual tool/technolgy stack is:

- [GNU Bash] (https://www.gnu.org/software/bash/)
- [curl] (https://curl.haxx.se/)
- [xmllint] (http://xmlsoft.org/xmllint.html)
- [Postfix] (http://www.postfix.org/)
- [launchd] (https://www.launchd.info/)


## Running/Deployment

The scripts run as services in your local computer. The script runs as default everyday on 8AM and 8PM Local Time.

### Configuring Services

How do you enter your references/information.

### Managing Services

How do you add or delete the services when they are not needed.


## Roadmap

I intend to move to Python with Docker in order to have a better development/deployment infrastructure.

Next would be to host a website.

## Contributions

For now I am accepting feature requests. You can create an ticket.
