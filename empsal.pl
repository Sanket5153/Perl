%sal=();
open(rfh,"<","doc.txt");
while(<rfh>){
@arr=split ":",$_;
	if(exists($sal{$arr[2]})){
	$sal{$arr[2]}=$sal{$arr[2]}+$arr[3];
	}
	else{
	$sal{$arr[2]}=$arr[3];
	}
}
#print %sal;
foreach(keys %sal){
		print $_."---->".$sal{$_}."\n";
		
}
