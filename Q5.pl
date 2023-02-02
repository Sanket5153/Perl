#5. accept few numbers from command line argumen. and display sum of only numbers which are divisible by 5

$sum = 0;
foreach (@ARGV){
if ($_ % 5 ==0 ){
	$sum = $sum+ $_; 
}
}
print("Addition aa gayi : $sum\n");
