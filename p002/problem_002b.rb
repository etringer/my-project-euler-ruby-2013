#!/usr/bin/ruby

# Even Fibonacci numbers
# Problem 2
# Each new term in the Fibonacci sequence is generated by adding the previous
#   two terms. By starting with 1 and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose values do not exceed
#   four million, find the sum of the even-valued terms.

# http://projecteuler.net/problem=2
# andrew etringer

def fib_evens( max_val )
  # every 3rd value of fibonacci is even, starting with 2
  # considering only these, you can define the sequence thusly:
  x = [ 0, 2 ]
  while
    next_val = 4 * x[ -1 ] + x[ -2 ]
    return x[ 1..-1 ] if next_val > max_val
    x << next_val 
  end
end

puts fib_evens( 4e6 ).inject( :+ )
