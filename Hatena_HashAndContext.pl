#!/usr/bin/perl


use lib "$FindBin::Bin/lib";
use strict;
use warnings;
use feature qw/say/;


#コンテキスト
my @x = (0,1,2,3);
my ($ans1) = @x;
my $ans2 = @x;


say "ans1 = $ans1";
say "ans2 = $ans2" ;


__END__
#ハッシュのカッコは{}ではなく()をつかう
my %hash = (


	perl => 'larray',
	ruby => 'matz',

);


#全要素の展開
for my $key (keys %hash) {


 my $value = $hash{$key};

 say "$value"; 

}

__END__
#ハッシュのカッコは{}ではなく()をつかう
my %hash = (


	perl => 'larray',
	ruby => 'matz',

);

#ハッシュの展開時は{}を使い展開する
say $hash{perl};
say $hash{ruby};

