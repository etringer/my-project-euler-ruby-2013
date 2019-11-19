#!/usr/bin/ruby

# Smallest Multiple
# Problem 5
# 2520 is the smallest number that can be divided by each of the numbers from 1
#   to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the
#   numbers from 1 to 20?

# http://projecteuler.net/problem=5
# andrew etringer

#x = 5 
( 1..20 ).to_a.each do |x|
  puts x
  upper_half = ( ( 1 + x / 2 )..x ).to_a.reverse

  i = 0
  is_multiple = false
  while ! is_multiple
    i += x
    is_multiple = false
    upper_half.each do |uh| 
      break unless 0 == ( i % uh )
      next unless uh == upper_half.last
      is_multiple = true
    end
  end
  puts i
  puts

end
