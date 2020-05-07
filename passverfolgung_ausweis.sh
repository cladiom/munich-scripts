!/bin/bash

if !(curl -d "ifNummer=LF08F9KMR5&pbAbfragen=Abfragen" https://www17.muenchen.de/Passverfolgung/ | grep "liegt" | xmllint --format --xpath '//TD/B[1]/text()' - | grep -q "nicht"); then
    echo "Done" | mail -s "Personalausweis" juniormartins14@gmail.com
else 
    echo "In Progress" | mail -s "Personalausweis" juniormartins14@gmail.com
fi