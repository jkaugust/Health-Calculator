package main;


use strict;
use warnings;



use Health::person;
use Health::calculator;


print "Your first name please: ";
my $fname = <STDIN>;
chomp $fname;

print "Your last name please: ";
my $lname = <STDIN>;
chomp $lname;

print "Your gender please (M/F): ";
my $gender = <STDIN>;
chomp $gender;

print "Your weight please in  lbs: ";
my $weight = <STDIN>;
chomp $weight;

print "Your height please in inches: ";
my $height = <STDIN>;
chomp $height;

my $object = new person( "$fname","$lname","$gender", "$weight", "$height");

my $ge = $object->getGender();
my $we = $object->getWeight();
my $he = $object->getHeight();

my $obj = new calculator("$ge","$we","$he");
BMI calculator();


1;

