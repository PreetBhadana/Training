'''
Very Easy 6
You are counting points for a basketball game, given the amount of 3-pointers scored and 2-pointers scored, find the final points for the team and return that value (2 -pointers scored, 3-pointers scored).

Examples
points(1, 1) ➞ 5

points(7, 5) ➞ 29

points(38, 8) ➞ 100
'''
def points(x, y)
    return x*2 + y*3
end

puts points(7, 5)
