!/bin/bash

if !(curl -d "ifNummer=CH1H7N48X4&pbAbfragen=Abfragen" https://www17.muenchen.de/Passverfolgung/ | grep "liegt" | xmllint --format --xpath '//TD/B[1]/text()' - | grep -q "nicht"); then
    echo "Done" | mail -s "Reisepass" juniormartins14@gmail.com
else 
    echo "In Progress" | mail -s "Reisepass" juniormartins14@gmail.com
fi