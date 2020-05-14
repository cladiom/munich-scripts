#!/bin/sh

curl -d "zapnummer=AB08S8KMR1&pbAbfragen=Auskunft" https://www17.muenchen.de/EATWebSearch/Auskunft | tidy --show-warnings no -q -wrap 0 | xmllint --html --nowarning --xpath '//html/body/table/tr/td/table/tr/td/form/table/tr/td/font[1]/text()' - | mail -s "Residence Permit" you@mail.com