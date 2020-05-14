#!/bin/sh

BOT_TOKEN=bot1288734160:AAH5oStrMnYjdG8NXmtybUEN1aF-kwq9ZiM #You Telegram Bot token
CHAT_ID=872448306 #Your personal Telegram id
REFERENCE_NUMBER=AB08S8KMR1 #Your Reference Number

STATUS=$(curl -d "ifNummer=$REFERENCE_NUMBER&pbAbfragen=Abfragen" https://www17.muenchen.de/Passverfolgung/ | grep "liegt" | xmllint --format --xpath '//TD/B[1]/text()' -)
curl -d "chat_id=$CHAT_ID&text=Passport: $STATUS" https://api.telegram.org/"$BOT_TOKEN"/sendMessage