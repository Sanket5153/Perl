#display triangle as follows
#1
#12
#123
#1234
#12345


for ($row = 1 ; $row <= 5 ; $row++)
{
	for ($column=1;$column <= $row; $column++)
	{
		print($column);
		
	}
	print("\n");
}
