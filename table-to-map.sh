cat $1 | sed -e 's# i #   #g' | sed -e 's#   #\n#g' | sed '/^$/d'
