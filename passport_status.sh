#!/bin/sh

if !(curl -d "ifNummer=XX1H7N48X3&pbAbfragen=Abfragen" https://www17.muenchen.de/Passverfolgung/ | grep "liegt" | xmllint --format --xpath '//TD/B[1]/text()' - | grep -q "nicht"); then
    echo "is Done" | mail -s "Passport" you@mail.com
fi