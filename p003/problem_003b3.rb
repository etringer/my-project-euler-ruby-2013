#!/usr/bin/ruby

# Largest prime factor
# Problem 3
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

# http://projecteuler.net/problem=3
# andrew etringer

# this code will print each prime factor of z
# reductions shown in parentheses

z = 600851475143 
factor = 2
# every integer can have at most one prime factor
#   greater than n ** 0.5
max_factor = z ** 0.5

# if factor exceeds max_factor then the remaining 
#   number (z) is the largest prime factor
while z > 1 && factor <= max_factor do 
  # find the next factor
  if 0 == ( z % factor )
    # print each factor
    puts factor
    # reduce z by dividing by factor
    z = z / factor
#    printf( "  ( %i )\n", z )
    # find each sub-factor and reduce z by dividing
    while 0 == ( z % factor )
      z = z / factor
#      printf( "  ( %i )\n", z )
    end
    max_factor = z ** 0.5
  end
  # increment possible factor by two since 2 is the only even prime
  factor = ( 2 == factor ) ? factor += 1 : factor += 2
end
puts z unless 1 == z

