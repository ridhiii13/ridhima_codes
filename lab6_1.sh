echo "Enter Number"
read num
sum=0
a=$num
while [ $a -ne 0 ]
do
rem=`expr $a % 10`
sum=$(( (sum + rem) * 10))
a=`expr $a / 10`
done

if [ $((sum/10)) -eq $num  ];
then
echo "it is pallindrome"
else
echo "not pallindrome"

fi
