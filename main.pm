package main;



use 5.010;
use strict;
use warnings;

our $VERSION = '0.01';


use Health::person;


print "Your first name please: ";
my $fname = <STDIN>;
chomp $fname;

print "Your last name please: ";
my $lname = <STDIN>;
chomp $lname;

print "Your gender please (M/F): ";
my $gender = <STDIN>;
chomp $gender;

print "Your weight please: ";
my $weight = <STDIN>;
chomp $weight;

print "Your height please: ";
my $height = <STDIN>;
chomp $height;

new person( "$fname","$lname","$gender", "$weight", "$height");




