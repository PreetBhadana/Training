'''
Medium 1

A decimal number can be represented as a sequence of bits. To illustrate:

6 = 00000110
23 = 00010111
From the bitwise representation of numbers, we can calculate the bitwise AND, bitwise OR and bitwise XOR. Using the example above:

bitwise_and(6, 23) ➞ 00000110

bitwise_or(6, 23) ➞ 00010111

bitwise_xor(6, 23) ➞ 00010001
Write three functions to calculate the bitwise AND, bitwise OR and bitwise XOR of two numbers.

Examples
bitwise_and(7, 12) ➞ 4

bitwise_or(7, 12) ➞ 15

bitwise_xor(7, 12) ➞ 11
Notes
Ruby has a useful function: to_s(2), where you can see the binary representation of a decimal number.

'''



def bitwise_and(x, y)
    c = x & y
    return c

end 

def bitwise_or(x, y)
    c = x | y
    return c
end

def bitwise_xor(x, y)
    c = x ^ y
    return c
end



puts bitwise_and(7, 12)

puts bitwise_or(7, 12)
    
puts bitwise_xor(7, 12)