'''
Hard 5

Create a function that retrieves every number that is strictly larger than every number that follows it.

Examples
larger_than_right([3, 13, 11, 2, 1, 9, 5]) ➞ [13, 11, 9, 5]
# 13 is larger than all numbers to its right, etc.

larger_than_right([5, 5, 5, 5, 5, 5]) ➞ [5]
# Must be strictly larger.
# Always include the last number.

larger_than_right([5, 9, 8, 7]) ➞ [9, 8, 7]

'''
def larger_than_right(arr)
    arr1 = []
    for i in arr
        #print i," "
        flag = 0
        for j in arr.index(i)...arr.length
            if i < arr[j]
                #print i,' '
                flag += 1
                break
            end
        end
        if flag > 0
            next
        else
            arr1.append(i)
        end

    end
    return arr1.uniq
end

#puts larger_than_right([3, 13, 11, 2, 1, 9, 5])

#puts larger_than_right([5, 5, 5, 5, 5, 5])

puts larger_than_right([5, 9, 8, 7])