package person;


use Exporter qw(import);
@EXPORT_OK = qw(getFirstName getLastName getGender getWeight getHeight);


use strict;
use warnings;


sub new {
   my $class = shift;
   my $self = {
      firstName => shift,
      lastName  => shift,
      gender    => shift,
      weight    => shift,
      height    => shift,
   };
   # Print all the values just for clarification.
   print "First Name is $self->{firstName}\n";
   print "Last Name is $self->{lastName}\n";
   print "Your gender is $self->{gender}\n";
   print "Your weight is $self->{weight}\n";
   print "Your height is $self->{height}\n";
   bless $self, $class;
   return $self;
}
sub setFirstName {
   my ( $self, $firstName ) = @_;
   $self->{firstName} = $firstName if defined($firstName);
   return $self->{firstName};
}

sub getFirstName {
   my( $self ) = @_;
   return $self->{firstName};
}
sub setLastName {
   my ( $self, $lastName ) = @_;
   $self->{lastName} = $lastName if defined($lastName);
   return $self->{lastName};
}

sub getLastName {
   my( $self ) = @_;
   return $self->{lastName};
}

sub setGender {
   my ( $self, $gender ) = @_;
   $self->{gender} = $gender if defined($gender);
   return $self->{gender};
}

sub getGender {
   my( $self ) = @_;
   return $self->{gender};
}

sub setWeight {
   my ( $self, $weight ) = @_;
   $self->{weight} = $weight if defined($weight);
   return $self->{weight};
}

sub getWeight {
   my( $self ) = @_;
   return $self->{weight};
}

sub setHeight {
   my ( $self, $height ) = @_;
   $self->{height} = $height if defined($height);
   return $self->{height};
}

sub getHeight {
   my( $self ) = @_;
   return $self->{height};
}
1;

