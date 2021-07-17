'''
Very Easy 7

Given two arguments, return an array which contains these two arguments.

Examples
make_pair(1, 2) ➞ [1, 2]

make_pair(51, 21) ➞ [51, 21]

make_pair(512124, 215) ➞ [512124, 215]
'''

def make_pair(x, y)
    c = [].append(x,y)
    return c.to_s
end

puts make_pair(512124,215)