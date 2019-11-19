#!/usr/bin/ruby

# Multiples of 3 and 5
# Problem 1
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we
#   get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

# http://projecteuler.net/problem=1
# andrew etringer

def multiples_of( x, xmax )
  ct = x
  nums = []
  while ct <= xmax
    nums << ct
    ct += x
  end
  return nums
end

nums = []
[ 3, 5 ].each do |n|
  nums += multiples_of( n, 999 )
end
puts nums.uniq.inject( :+ )
