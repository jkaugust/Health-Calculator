package person;


use Exporter qw(import);
@EXPORT_OK = qw(setFirstName getFirstName setLastName getLastName);


use 5.010;
use strict;
use warnings;

our $VERSION = '0.01';



use strict;
use warnings;

sub new {
   my $class = shift;
   my $self = {
      _firstName => shift,
      _lastName  => shift,
      _gender    => shift,
      _weight    => shift,
      _height    => shift,
   };
   # Print all the values just for clarification.
   print "First Name is $self->{_firstName}\n";
   print "Last Name is $self->{_lastName}\n";
   print "Your gender is $self->{_gender}\n";
   print "Your weight is $self->{_weight}\n";
   print "Your height is $self->{_height}\n";
   bless $self, $class;
   return $self;
}
sub setFirstName {
   my ( $self, $firstName ) = @_;
   $self->{_firstName} = $firstName if defined($firstName);
   return $self->{_firstName};
}

sub getFirstName {
   my( $self ) = @_;
   return $self->{_firstName};
}
sub setLastName {
   my ( $self, $lastName ) = @_;
   $self->{_lastName} = $lastName if defined($lastName);
   return $self->{_lastName};
}

sub getLastName {
   my( $self ) = @_;
   return $self->{_lastName};
}




1;

