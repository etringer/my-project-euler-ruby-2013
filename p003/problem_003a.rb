#!/usr/bin/ruby

# Largest prime factor
# Problem 3
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

# http://projecteuler.net/problem=3
# andrew etringer

class Fixnum
  def prime?
    if primes_upto( self ).include?( self )
      return true
    else
      return false
    end
  end
end

def primes_upto( xmax )
  # primes have no factors except for 1 and self
  x = []
  ii = 2
  ( ii..xmax ).each do |i|
    puts i if 0 == ( i % 1000 )
    prime = false
    ( 2..i ).each do |k|
      #printf( "%i, %i\n", i, k )
      #if i == k
      if k > ( i / 2 )
        prime = true
        #puts 'prime number!'
        break
      end
      if ( i / k ) == ( i / k.to_f )
        #puts 'factor found'
        break
      end
    end
    x << i if prime
  end
  return x
end

#( 1..100 ).each do |k|
#  printf( "%i: %s\n", k, k.prime? )
#end
#exit

z = 600851475143 
#z = 13195

primes = primes_upto( z / 2 )
# select the prime factors
puts primes.select{ |x| 0 == ( z % x ) }

