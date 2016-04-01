n=1000
while read x
do
    n=$((n+1))
    echo -n $x = $n | tr -d "'+;"
    echo ';'
done

