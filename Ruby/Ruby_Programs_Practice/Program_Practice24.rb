'''
Medium 7

Write a function that takes two arrays (arr1 and arr2) and an int n, and returns true if the second array equals the first array shifted by n positions. Otherwise, return false.

Examples
circular_shift([1, 2, 3, 4], [3, 4, 1, 2], 2) ➞ true

circular_shift([1, 1], [1, 1], 6) ➞ true

circular_shift([0, 1, 2, 3, 4, 5], [3, 4, 5, 2, 1, 0], 3) ➞ false
Notes
The two lists will have the same length.
n can be a negative value.

'''


def circular_shift(arr1, arr2, n)
    t = arr1
        
    for i in 1..n
        temp = arr1[-1]
        arr1.unshift(temp)
        arr1.pop
    end
    

    num1 = arr1.join('')
    num2 = arr2.join('')
    if num1 == num2
        return true
    else

        return false
    end
    
    
end 


#
puts circular_shift([1, 2, 3, 4], [3, 4, 1, 2], 2)
#
puts circular_shift([1, 1], [1, 1], 6)

# 
puts circular_shift([0, 1, 2, 3, 4, 5], [3, 4, 5, 2, 1, 0], 3)