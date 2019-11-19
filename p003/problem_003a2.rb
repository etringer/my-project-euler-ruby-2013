#!/usr/bin/ruby

# Largest prime factor
# Problem 3
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

# http://projecteuler.net/problem=3
# andrew etringer

def primes_upto( xmax, xfac )
  # primes have no factors except for 1 and self
  x = []
  ii = 2
  ( ii..xmax ).each do |i|
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
    if prime and 0 == ( xfac % i )
      puts i 
      x << i
    end
  end
  return x
end

z = 600851475143 
#z = 13195

primes_upto( z / 2, z )

# select the prime factors
#puts primes.select{ |x| 0 == ( z % x ) }

# 6857 is the biggest number I've found
