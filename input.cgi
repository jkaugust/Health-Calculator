#!/usr/local/bin/perl
package input;

use warnings;

use CGI qw(:standard);
use CGI::Carp;
use Health::person;
use Health::calculator;

open (HTML, "/Users/JKA/eclipse-workspace/Health/input.html")

local ($buffer, @pairs, $pair, $name, $value, %FORM);
# Read in text
$ENV{'REQUEST_METHOD'} =~ tr/a-z/A-Z/;

if ($ENV{'REQUEST_METHOD'} eq "POST") {
   read(STDIN, $buffer, $ENV{'CONTENT_LENGTH'});
} else {
   $buffer = $ENV{'QUERY_STRING'};
}

# Split information into name/value pairs
@pairs = split(/&/, $buffer);

foreach $pair (@pairs) {
   ($name, $value) = split(/=/, $pair);
   $value =~ tr/+/ /;
   $value =~ s/%(..)/pack("C", hex($1))/eg;
   $FORM{$name} = $value;
}

$first_name = $FORM{fname};
$last_name  = $FORM{lname};
$gender  = $FORM{gen};
$weight = 123;
$height =123;

my $object = new person( "$first_name","$last_name","$gender", "$weight", "$height");

my $ge = $object->getGender();
my $we = $object->getWeight();
my $he = $object->getHeight();

my $obj = new calculator("$ge","$we","$he");
BMI calculator();


1;