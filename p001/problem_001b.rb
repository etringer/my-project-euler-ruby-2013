#!/usr/bin/ruby

# Multiples of 3 and 5
# Problem 1
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we
#   get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

# http://projecteuler.net/problem=1
# andrew etringer

def sum_multiples_of( x, xmax )
  ( 1..xmax/x ).map{ |i| i * x }.inject( :+ )
end

sum = 0
max = 999
nums = [ 3, 5 ]
# sum all multiples of 3 and 5
nums.each{ |n| sum += sum_multiples_of( n, max ) }
# subtract the sum of multiples of 15 (3*5)
sum -= sum_multiples_of( nums.inject( :* ), max )
puts sum
