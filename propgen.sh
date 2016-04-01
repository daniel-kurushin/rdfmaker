while read a
do
  a=$( echo $a | cut -d ':' -f 1 | awk -F 'ed_' '{print$2}' )
  echo "property $a : double read f$a;"
done
