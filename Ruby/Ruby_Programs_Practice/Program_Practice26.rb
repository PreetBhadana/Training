'''
Hard 2

Create a function that subtracts one positive integer from another, without using any arithmetic operators such as -, %, /, +, etc.

Examples
my_sub(5, 9) ➞ 4

my_sub(10, 30) ➞ 20

my_sub(0, 0) ➞ 0
Notes
Do not multiply by -1.
Use bitwise operations only: <<, |, ~, &, etc.

'''

def my_sub(x, y)
    return y + ~x + 1

end

puts my_sub(2, 5)

puts my_sub(5, 9)

puts my_sub(10, 30)

puts my_sub(0, 0)