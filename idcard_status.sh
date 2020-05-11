#!/bin/sh

if !(curl -d "ifNummer=XX08F9LKR1&pbAbfragen=Abfragen" https://www17.muenchen.de/Passverfolgung/ | grep "liegt" | xmllint --format --xpath '//TD/B[1]/text()' - | grep -q "nicht"); then
    echo "is Done" | mail -s "ID Card" you@mail.com
fi