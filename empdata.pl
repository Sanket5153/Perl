open(rfh,"<","doc.txt");
$sum=0;
while(<rfh>){
@arr=split":",$_;
if($arr[2] eq "HR"){
$sum=$sum+$arr[3];
}
print $_;

}
print "Total".$sum;
