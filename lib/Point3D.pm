package Point3D;


use base 'Point';

sub z {
	my $self = shift;

	
	if (@_){

		$self->{z} = $_[0];


	}
	else{ 


	 	return $self->{z};	

	}

}

1;
