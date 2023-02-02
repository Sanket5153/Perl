#4. store list of cityis in a array. Accept a city from user, and check whether city exists, if found display the position. otherwise display not found


@city = ("nashik" , "pune" , "Nagpur" , "patna" , "indore");

print("Enter city u want to add : ");
$name =<>;
chomp ($name);
$len = @city;

for ($i=0;$i<$len;$i++){
	if(@city[$i] eq $name){
		print("found at postition : $i\n");
		last;
	}
	else{
		print("not\n");
	}
}


