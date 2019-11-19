#!/usr/bin/ruby

# Sum Square Difference
# Problem 6

# The sum of the squares of the first ten natural numbers is,
# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural
#   numbers and the square of the sum is 3025  385 = 2640.
# Find the difference between the sum of the squares of the first one hundred
#   natural numbers and the square of the sum.

# http://projecteuler.net/problem=6
# andrew etringer

x = 100

def sum_of_1_to_n( n ) 
  return ( ( n ** 2 ) / 2.0 + n / 2.0 ).to_i
end

sum_of_squares = 0
( 1..x ).each do |i|
  sum_of_squares += ( i ** 2 )
end

puts sum_of_1_to_n( x ) ** 2 - sum_of_squares 
