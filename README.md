# General

Useful scripts to make life in Munich easier.

Mainly the scripts here try to automate legacy services into Push Notifications.

Available departments are:
- [Bürgerbüro](https://www.muenchen.de/rathaus/Stadtverwaltung/Kreisverwaltungsreferat/Buergerbuero.html) (civil affairs)
- [Verkehr](https://www.muenchen.de/rathaus/Stadtverwaltung/Kreisverwaltungsreferat/Verkehr) (traffic affairs)

Available services are:

- [Personalausweis/ID Card status](https://www17.muenchen.de/Passverfolgung/)
- [Reisepass/Passport status](https://www17.muenchen.de/Passverfolgung/)
- [Aufenthaltstitel/Residence Permit status](https://www17.muenchen.de/EATWebSearch/)
- [Führerschein/Driver's License status](https://www17.muenchen.de/Fuehrerschein/)

You will receive an Telegram message informing the status.

## Development

Initially I have been using Bash Script.

The actual tool/technolgy stack is:

- [GNU Bash](https://www.gnu.org/software/bash/)
- [curl](https://curl.haxx.se/)
- [tidy](https://linux.die.net/man/1/tidy)
- [xmllint](http://xmlsoft.org/xmllint.html)
- [Telegram Bot](https://core.telegram.org/bots)
- [launchd](https://www.launchd.info/)

## Configuring/Running/Deploying

First of all you will need to create your own Telegram Bot. [See here](https://core.telegram.org/bots#6-botfather)

Second, you will need to find out which is your Personal Telegram Chat ID. [See here](https://pupli.net/2019/02/get-chat-id-from-telegram-bot/)

Third, to the scripts:

The scripts run as services in your local computer. The script runs as default every 8 hours but you can change it.

Create a folder under your user location.

<code> e.g: /Users/cladiomartins/**Scripts** </code>

Copy and paste the \*.sh script you want under the created folder

Open the \*.sh file and edit with your **Reference Code**, **Telegram Chat Id** and **Telegram Bot Token**.

Copy and paste the relate \*.plist file into ~/Library/LaunchAgents/

Open the \*.plist file and edit the Program path to your earlier created folder/\*.sh.

In the Terminal first enable your file to be accessed, e.g.:  
<code> chmod u+x /Users/cladiomartins/Scripts/passport_status.sh </code>

In order to load the service type in the Terminal:  
<code> launchctl load -w ~/Library/LaunchAgents/de.gauderio.munich.passport.agent.plist  </code> 

In order to start the service type in the Terminal:  
<code> launchctl start ~/Library/LaunchAgents/de.gauderio.munich.passport.agent.plist </code> 

To stop a service you can type in the Terminal:  
<code> launchctl unload ~/Library/LaunchAgents/de.gauderio.munich.passport.agent.plist </code> 

## Roadmap

I intend to move to Python with Docker in order to have a better development/deployment infrastructure.

## Contributions

For now I am accepting feature requests. You can create a ticket :)
