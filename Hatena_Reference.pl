#!/usr/bin/perl


use lib "$FindBin::Bin/lib";
use strict;
use warnings;
use feature qw/say/;
use Data::Dumper;


#配列のデリファレンス
my $ref_x = [1,2,3];


#mapによる配列のデリファレンス
my @x = map {$ _ } @$ref_x;

say 'mapによる配列のデリファレンス';
say @x;
say '';


#mapによる配列のデリファレンス
my @x2 = map {$ _ * 2 } @$ref_x; #2倍にしてデリファレンス

say 'mapを使い2倍にして配列のデリファレンス';
say @x2;


say '';

#->で配列要素のデリファレンス

say '->で配列要素のデリファレンス';
say $ref_x->[0];


say '';

#コンテキストを使った配列のデリファレンス
my @new_x = @$ref_x;


say 'コンテキストを使った配列のデリファレンス';
say @new_x;


__END__
#リファレンスの取得と作成
my @x = (1,2,3);
my $ref_x1 = \@x;

say "ref_x1 = $ref_x1";



print "ref_x1 = "  .  Dumper($ref_x1) . "\n";


#リファレンスに配列を直接入力する書き方
my $ref_x2 = [4,5,6];


say "ref_x2 = $ref_x2";

print "ref_x2 = "  .  Dumper($ref_x2) . "\n";


#組み合わせ

my @y = (7,8,9);

#配列をリファレンスに格納
my $ref_x3 = [@y];


say "ref_x3 = $ref_x3";


print "ref_x3 = "  .  Dumper($ref_x3) . "\n";


__END__
my @matrix = (

	(0,1,2,3),
	(4,5,6,7),

);

say @matrix;

my %entry = (

	body => 'hello',
	comments => ('good','bad','soso'),

);


print Dumper(\%entry);
