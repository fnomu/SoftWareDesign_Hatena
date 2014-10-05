#!/usr/bin/perl


use lib "$FindBin::Bin/lib";
use strict;
use warnings;
use feature qw/say/;



my @array = ('a','b','c','d','e');


#全要素のループ
for my $a (@array){

	say "array = $a"; #ダブルクォートでは変数展開できる
#	say 'array = $a'; #シングルクォートでは変数展開できない

}

say "";
#配列のスライス

my @slice = @array[1..3];

for my $s (@slice){

	say "slice = $s"; #ダブルクォートでは変数展開できる
#	say 'array = $a'; #シングルクォートでは変数展開できない

}




__END__
my @array = ('a','b','c','d','e');

print $array[1] . "\n"; #b


my @arraylength = ('abc','bef','cfaf','deaf','e');

my $length = scalar(@arraylength); #長さというか要素数

print $length . "\n";


#配列のスライス

my @slice = @array[1..3];

#全要素のループ
for my $a (@array){

	say "array = $a"; #ダブルクォートでは変数展開できる
#	say 'array = $a'; #シングルクォートでは変数展開できない

}

__END__
use strict;
use warnings;
use utf8;

#バイト列に変換するためにEncodeモジュールとencode_utf8関数を使う
use Encode;

print encode_utf8 'ほげ';


__END__
#日本語を使用するにはuse utf8を使用する

use strict
use warnings;
use utf8;

print length 'ほげ';

