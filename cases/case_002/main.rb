#!/usr/bin/env ruby

def fib(n)
  if n <= 2
    return 1
  else
    return fib(n-2) + fib(n-1)
  end
end

puts fib(ARGV[0].to_i)
