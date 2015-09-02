#!/usr/bin/perl


my %age = ("chetan", 25,"swapna",28,"sarit",27);

print " printing individual age record in the hash:\n";
print "chetan = $age{\"chetan\"}\nswapna=$age{\"swapna\"}\nsarit=$age{\"sarit\"}\n======================\n";

foreach $key (keys%age) {
   print "$key=>$age{$key}\n";
}

print "========================\n";

while (($key,$value) = each(%age)) {
		print "$key => $value\n";

}

print "========================\n";

@name = keys%age;
@age = values%age;
$size = scalar(@name);

print "names are = @name\nage=@age\nsize of hash = $size\n";


@repetative_array=(1,2,3,1,5,3,2,6,7,3,1,4,5,0,0,8);
%temp_hash;
foreach $key (@repetative_array) {
		if(exists($temp_hash{$key})) {
  				$temp_hash{$key}++;
		}
		else {
				$temp_hash{$key} =1;
		}
}

@unique_array = keys%temp_hash;

while(($key,$value) = each(%temp_hash)) {
	print "$key repeted : $value\n";
}

print "unique array = @unique_array\n";
@unique_array = sort(keys%temp_hash);
print "now sorting the array: @unique_array\n";

if(grep {/chetan/} keys%age) {
   print "chetan exist in the age\n";
}

# this can be done in another way

if(exists($age{"chetan"})) {
    print "chetan exist in the age\n";
}

# but for values we can not use exists so grep is only method example

if(grep {/25/} values%age) {
	print " we have a 25 yr gentleman\n";
}

# negative testcase

if(scalar (grep {/abhi/ } keys%age)>0) {
   print "chetan exist in the age\n";
}
else {
   print "cheta is not here\n";
}

# this can be done in another way

if(exists($age{"cheta"})) {
    print "cheta exist in the age\n";
}
else {
   print "cheta is not here\n";
}

# but for values we can not use exists so grep is only method example

if(grep /30/,values%age) {
	print " we have a 30 yr gentleman\n";
}
else {
   print "we do not have 30 yr old man\n";
}

