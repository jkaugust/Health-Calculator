package calculator;


use Exporter qw(import);
@EXPORT_OK = qw(getval);


use strict;
use warnings;


use Health::person;

my $g;
my $w;
my $h;

sub new {
   my $class = shift;
   my $self = {
      gender    => shift,
      weight    => shift,
      height    => shift,
   }; 
   $g = $self->{gender};
   $w = $self->{weight};
   $h = $self->{height};
   bless $self, $class;
   return $self;
}

sub BMI {
	my $bmi = 703 *( $w / $h**2);
	print "Your BMI is: $bmi";
}
 
sub cal {
	
} 
 1;