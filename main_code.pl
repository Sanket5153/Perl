require "./test_sum.pl";
require "./test_sub.pl";
require "./test_mul.pl";



print("Enter ur choice : 1.Sum\t2.sub\t3.mul\n");
$choice=<>;
	if ($choice == 1){
		sum::sum_fun();
	}elsif ($choice == 2) {
		sub::sub_fun();
	}elsif ($choice == 3) {
		mul::mul_fun();
	}
	else{
		print("Thank u for visiting");
	}
		



