#!/usr/bin/ruby

# Summation of primes
# Problem 10
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

# http://projecteuler.net/problem=10
# andrew etringer

def primes_upto( x )
  # primes have no factors except for 1 and self
  primes = [ 2 ]
  i = 2
  while i < x
    i += 1
    is_prime = true
    primes.each do |p|
    #( 2..( i ** 0.5 ).floor ).each do |p|
      #break if p > ( i / 2 )
      break if p > ( i ** 0.5 )
      if 0 == ( i % p )
        is_prime = false
        break
      end
    end # p
    primes << i if is_prime
    i += 1 # skip the next integer (it's even)
  end # while
  return primes
end

x = 2e6
these_primes = primes_upto( x )
sum = 0
these_primes.each{ |k| sum += k }
puts sum
