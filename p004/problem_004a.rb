#!/usr/bin/ruby

# Largest palindrome product
# Problem 4
# A palindromic number reads the same both ways. The largest palindrome made
#   from the product of two 2-digit numbers is 9009 = 91 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

# http://projecteuler.net/problem=4
# andrew etringer

class Fixnum
  def is_palindromic?
    str_self = self.to_i.to_s
    ( str_self.size / 2 ).times.each do |i|
      next if str_self[ 0 + i ] == str_self[ - i - 1 ]
      return false
    end
    return true
  end
end

x = 999
biggest = 0
( 1..x ).to_a.reverse.each do |ix|
  ( ( 1 )..( ix ) ).each do |iy|
  #( ( ix - 9 )..( ix ) ).each do |iy|
    try = ( ix * iy )
    if try.is_palindromic?
      #printf( "%d: %d x %d\n", ( try ), ix, iy )
      biggest = [ biggest, try ].max
    end
  end
end

puts biggest
