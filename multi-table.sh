#! /bin/sh

if [ $# != 2 ]
then
    echo "You must put two parameters"
    exit 1
fi

first_val=$1
second_val=$2
if [ $first_val -lt 1 ] || [ $second_val -lt 1 ]
then
    echo "Value must be greater than or equal to 1"
    exit 0
fi 

for i in $(seq 1 $first_val)
do       
    for j in $(seq 1 $second_val)
    do
	echo -n $i "*" $j "=" `expr $i \* $j` " "
    done
    echo 
done
exit 0
