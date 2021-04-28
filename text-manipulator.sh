grep 'POST' access.log | sed -r 's/([0-9.:]+){2}\b'/"XXX.XXX.XXX"/ | head -n 20 | tail | awk -F\" '{ print $1, $2 }'
