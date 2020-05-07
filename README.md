# General

Useful scripts to make life in Munich less painful

Mainly the scripts here try to automate legacy services into Push Notifications.

Available departments are:
- [Bürgerbüro](https://www.muenchen.de/rathaus/Stadtverwaltung/Kreisverwaltungsreferat/Buergerbuero.html) (civil affairs, residence registration etc.)

Available services are:

- [Personalausweis/Reisepass status](http://www.muenchen.de/pass) - You will receive an e-mail informing when it is done.

## Development

Initially I have been using Bash Script.

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

How do you add or delete the services based in your need.

### Troubleshooting

Solutions for known problems.

- IPv6 sending guidelines regarding PTR records not met (TBD)

## Roadmap

I intend to move to Python with Docker in order to have a better development/deployment infrastructure.

## Contributions

For now I am accepting feature requests. You can create a ticket :)
