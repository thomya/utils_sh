#!/bin/bash

echo "This is a little tools for envset ."

str=(`find . -name root.mk`)
i=1
for var in ${str[@]};do
	echo "  $i :  $var"
	i=$(($i+1))
done

echo -n "please select you want to enter dir NO. :"
read n
n=$(($n-1))
#echo $n
echo ${str[$n]}
p=${str[$n]%build*}
echo $p
cd $p
p=`pwd`
source $p/build/envsetup.sh
print_lunch_menu
echo -n "please pick one lunch object no. :"
read  no
lunch $no

