#!/usr/bin/ruby

# 10001st prime
# Problem 7
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
#   that the 6th prime is 13.
# What is the 10 001st prime number?

# http://projecteuler.net/problem=7
# andrew etringer

def primes_from_2( x )
  # primes have no factors except for 1 and self
  primes = [ 2 ]
  i = 2
  while primes.size < x
    i += 1
    is_prime = true
    primes.each do |p|
      break if p > ( i / 2 )
      if 0 == ( i % p )
        is_prime = false
        break
      end
    end # p
    primes << i if is_prime
  end # while
  return primes[ -1 ]
end

#puts primes_from_2( 1 )
#puts primes_from_2( 2 )
#puts primes_from_2( 6 )
puts primes_from_2( 10001 )
