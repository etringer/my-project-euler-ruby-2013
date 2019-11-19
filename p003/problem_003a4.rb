#!/usr/bin/ruby

# Largest prime factor
# Problem 3
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

# http://projecteuler.net/problem=3
# andrew etringer

def primes_upto( xmax, xfac )
  # primes have no factors except for 1 and self
  primes = [ 2 ]
  ( 3..xmax ).each do |i|
    puts i if 0 == ( i % 10000 )
    is_prime = true
    primes.each do |p|
      break if p > ( i / 2 )
      if 0 == ( i % p )
        is_prime = false
        break
      end
    end # p
    primes << i if is_prime
    printf( " --> %i\n", i ) if is_prime && 0 == ( xfac % i )
  end # i
  #return primes
end

z = 600851475143 
#z = 13195

primes_upto( z / 6857, z )

#puts primes.inspect
# select the prime factors
#puts primes.select{ |x| 0 == ( z % x ) }

