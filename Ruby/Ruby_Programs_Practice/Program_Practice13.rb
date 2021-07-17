'''
Easy 2

Given an array and an integer n, return the sum of the first n numbers in the array.

Worked Example
sum_first_n_nums([9, 8, 7, 6], 3) ➞ 24
# The parameter n is specified as 3.
# The first 3 numbers in the list are 9, 8 and 7.
# The sum of these 3 numbers is 24 (9 + 8 + 7).
# Return the answer.
Examples
slice_sum([1, 3, 2], 2) ➞ 4

slice_sum([4, 2, 5, 7], 4) ➞ 18

slice_sum([3, 6, 2], 0) ➞ 0

'''

def slice_sum(arr, n)
    sum = 0
    for i in (0...n)
        sum = sum +arr[i]
    end
    return sum
end    


puts slice_sum([3, 6, 2], 0)