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

x = 998
( 1..x ).each do |a|
( 1..x ).each do |b|
( 1..x ).each do |c|
  next unless 1000 == ( a + b + c )
  next unless ( a**2 + b**2 ) == c**2
  puts a, b, c 
  puts
  puts a * b * c
  exit
end
end
end

