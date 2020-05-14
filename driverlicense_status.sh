#!/bin/sh

BOT_TOKEN=bot1288734160:AAH5oStrMnYjdG8NXmtybUEN1aF-kwq9ZiM #You Telegram Bot token
CHAT_ID=872448306 #Your personal Telegram id
REFERENCE_NUMBER=AB08S8KMR1 #Your Reference Number

STATUS=$(curl -d "nummer=$REFERENCE_NUMBER&art=AFE" https://www17.muenchen.de/Fuehrerschein/FueController | tidy --show-warnings no -q -wrap 0 | xmllint --html --nowarning --xpath '//html/body/table/tr/td/table/tr/td/font[@color="red"]/text()' -)
curl -d "chat_id=$CHAT_ID&text=ID Card: $STATUS" https://api.telegram.org/"$BOT_TOKEN"/sendMessage