

%books=("perl"=>100,"python"=>200,"java"=>300);
sub addnewbook{
    print "Enter book name to add : ";
	$name=<>;
	chomp($name);
	print "Enter number of pages\n";
	$pages=<>;
	if(exists($books{$name})){
	   print "alredy exists";
	   return false;
	}else{
	  $books{$name}=$pages;
	  print "added";
	  return true;
	}
}
sub displayall{
	foreach(keys %books){
		print $_."---->".$books{$_}."\n";
		
	}
	
}

sub modify(){
	print("Enter book u want to modify : ");
	$mod=<>;
	chomp($mod);
	if (exists($books{$mod})){
 		print("Enter the new pages : ");
		$new_pg=<>;
		$books{$mod}="$new_pg";
		return true;
	}
	else{
		return false;
		
	}
}

sub numeric_sort(){
	print("Sorting NUMERICALLY ...\n");
	foreach my $key (sort {$books{$a} <=> $books{$b}} keys %books) {
    print "$key: $books{$key}\n";
    
}
	print("DONE...\n");
}

sub name_sort(){
	print("Sorting Alphabetically ...\n");
	foreach my $key (sort keys %books){
   print "$key\n";
}
	print("Done ...\n");
}

sub page_shower(){
	while (($key, $value) = each(%books)){
	print $key."==> ".$value."\n";
}
}

sub deletebyname{
	print "Enter book name to delete\n";
	$bnm=<>;
	chomp($bnm);
	if(exists($books{$bnm})){
		delete($books{$bnm});
		print %books;
		return true;
	}
	else{
		return false;
	}
}


do{
	
	print "\n1. add new book\n2. delete a book\n3. display all\n";
	print "4. modify pages\n5. display all book name based on pages\n";
	print "6. sort by name \n7. display pages of the book\n8. exit\n";


	print "choice: ";
	
	$choice=<>;
	if($choice==1){
	   $status=addnewbook();
	   if($status){
	   	print("Book not added...\n");
	   }else{
	   	print("Book added successfully ..\n");
	   }
		
	}elsif( $choice==2){
		
	   $status=deletebyname();
	   if(status){
		   print("deleted\n");
	   }else{
		   print "not found\n";
	   }
	}elsif( $choice==3){
	   displayall();
	}elsif ($choice == 4){
		$status=modify();
		if (status){
			print("Book modified\n");
		}else{
			print("Book not found\n");
		}
	}elsif($choice == 5){
		numeric_sort();
	
	}elsif ($choice == 6){
		name_sort();
	}elsif ($choice == 7){
		page_shower();
	
	}elsif($choice==8){
		print "Thank you for visiting\n";
	 
	}else{
	   print("wrong choice");
	}
}while($choice!=8); 
