#!/usr/bin/perl

#use get_data_type;

$a = 10;
get_type($a);
$a="chetan";
get_type($a);
$a=20.2;
get_type($a);

sub get_type {

    $temp = shift;
    if($temp =~ /\d*[^.]\d*/) {
        print "it is a integer\n";
    }
    elsif ($temp =~ /\d*[.]\D*/) {
        print "it is a float\n";
    }
    elsif($temp =~ /[a-zA-Z]*/) {
        print "it is a string\n";
    }
      
}
