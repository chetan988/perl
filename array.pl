#! /usr/bin/perl


# array can store mix data type value

@mix_data = (1,2,3,'chetan','das');

# we can specify a range of int in array

@int_range = (5..10); 

# we can save letter

@char_range = (d..h);

#we can use space to create a array

@array_by_space = qw/ sunday monday tuesday wednessday thrusday/;

# printing an array without control

print "mix_data array contain  @mix_data\n";

print "\nint_range array contain  @int_range\n";

# printing array in control way

foreach (@char_range)
 { print "data= $_\n"; }

# another way of control printing
   foreach $temp (@array_by_space)
    {
      print "day = $temp\n";
    }

# various way to get size of array

$size = @mix_data; # auto conversion

$size_1 = scalar(@mix_data); #scalar convert array to its size

$size_2 = $#mix_data+1;  # $#mix_data will give the max index of array 

print "size = $size\tsize_1 = $size_1\tsize_2 = $size_2\n";

# splicing of array i.e cut the array to small pieces

@first_three_day = @array_by_space[0,1,3];

print "sliced array = @first_three_day\n";

# actions on a array

#1. push: enter an element at the end

push(@array_by_space,'friday');

#pop : remove one element from array from last

$day = pop(@array_by_space);

#shift : remove one element from front end/begining

$day_1 = shift(@array_by_space);

#unshift : put the element in the front

unshift(@array_by_space,'sunday');

print "poped day : $day\nshifted day: $day_1\n after pushed and unshift array restored to @array_by_space\n";

#splicing is to replace array element: splice(@array,offset,number of element to change,values);

splice(@int_range,1,3,11,13,15);
print "after splicing array changed to @int_range\n";

#convering a string to array:

$days = 'sunday,monday,tuesday,wednesday,thrusday,friday,saturday';
@week = split(',',$days);

print "$days split into array as @week\n";

#spliting with two different syntax
$value_pair = 'monday#1,tuesday#1-2,thrusday#4-5-6';

@days = split(/[,#]/,$value_pair);

print "after spliting array is @days\n";


#transforming array to string

$days = join(',',map{'"'. $_ .'"'}@week);

print "after join days = $days\n";


# merging two array

@int_char_range = (@int_range,@char_range);

print "after merging the array is @int_char_range\n";
