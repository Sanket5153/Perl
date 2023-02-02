#sum = 9+ 99 + 999 + 9999 taking number of n from user


$temp =9;
$sum =0;
print("Enter number of N\n");
$num=<>;
for($count=0;$count < $num ; $count++){
	$sum = $sum + $temp;
	$temp =$temp * 10 + 9;
}
print("ADDITION : $sum");

