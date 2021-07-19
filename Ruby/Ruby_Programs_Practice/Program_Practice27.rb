'''
Hard 3

The Fibonacci sequence is a classic use case for recursive functions since the value of the sequence at a given index is dependent on the last two values. More precisely, it\'s dependent on the sum of the previous two values.

Write a function named fib that takes an integer n as its input. It should return the Fibonacci sequence\'s value at index n.

Examples
fib(6) ➞ 8
# 0 + 1 = 1, 1 + 1 = 2, 1 + 2 = 3, 2 + 3 = 5, 3 + 5 = 8

fib(1) ➞ 1

fib(2) ➞ 1

'''

def fib (n)
    
    if n < 0
        print "Invalid Input"
    
    elsif  n == 0
        return 0
    elsif n == 1
        return 1
    else
        return fib(n-1) + fib(n-2)
    end
end

puts fib(6)
puts fib(1)
puts fib(2)
