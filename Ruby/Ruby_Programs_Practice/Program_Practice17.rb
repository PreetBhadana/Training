'''
Easy 6

A number N is said to be a Curzon Number if 2N + 1 is divisible by 2*N + 1.


In this challenge, establish if a given integer num is a Curzon number. If 1 plus 2 elevated to num is exactly divisible by 1 plus 2 multiplied by num, then num is a Curzon number.

Given a non-negative integer num, implement a function that returns true is num is a Curzon number, or false if it\'s not.

Examples
is_curzon?(5) ➞ true
# 2 ** 5 + 1 = 33
# 2 * 5 + 1 = 11
# 33 is a multiple of 11

is_curzon?(10) ➞ false
# 2 ** 10 + 1 = 1025
# 2 * 10 + 1 = 21
# 1025 is not a multiple of 21

is_curzon?(14) ➞ true
# 2 ** 14 + 1 = 16385
# 2 * 14 + 1 = 29
# 16385 is a multiple of 29

'''

def is_curzon?(n)
    x = (2**n) + 1
    y = (2*n) + 1
    if x%y == 0
        return true
    else
        return false
    end

end


#puts is_curzon?(5)
puts is_curzon?(10)
#puts is_curzon?(14)

