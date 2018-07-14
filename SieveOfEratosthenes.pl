#!/usr/bin/perl

use strict;

print "\n=======================\n";
print "PRIME NUMBERS GENERATOR\n";
print "=======================\n";
# Get the range
print "Min value: ";
my $min = <STDIN>;
chomp $min;
print "Max value: ";
my $max = <STDIN>;
chomp $max;
# Generate max-range array
my @primes = (1...$max);
# Initialize all element by 1
for(my $i = 0; $i < $max; $i++) {    
 $primes[$i] = 1;
}
# The sieve of Eratosthenes
for (my $i=2; $i*$i <= $max;$i+=1) {    
 if ($primes[$i]) {        
   for (my $j=$i; $j*$i < $max; $j+=1) {            
     $primes[$i * $j] = 0;        
   }    
 }
}
# Get the results
my @p = ();
for (my $i=$min; $i<=$max; $i++) {    
 if ($primes[$i]) {        
   push @p, $i;    
 }
}

#Show found primes
my $size = @p;
print qq[Found $size primes:\n@p\n]; 

exit(0);