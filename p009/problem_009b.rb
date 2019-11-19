#!/usr/bin/ruby

# Special pythagorean triplet 
# Problem 9
# A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,
# a**2 + b**2 = c**2
# For example, 3**2 + 4**2 = 9 + 16 = 25 = 5**2.
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

# http://projecteuler.net/problem=9
# andrew etringer

# substitute in for c to reduce amount of looping

s = 1000
x = s - 2
( 1..x ).each do |a|
( 1..x ).each do |b|
  next unless ( a**2 + b**2 ) == ( s - a - b )**2
  c = ( s - a - b )
  puts a, b, c 
  puts
  puts a * b * c
  exit
end
end

