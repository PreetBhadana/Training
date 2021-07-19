'''
Medium 2 

Create a function that counts the number of times a particular letter shows up in the word search.

Examples
letter_counter([
  ["D", "E", "Y", "H", "A", "D"],
  ["C", "B", "Z", "Y", "J", "K"],
  ["D", "B", "C", "A", "M", "N"],
  ["F", "G", "G", "R", "S", "R"],
  ["V", "X", "H", "A", "S", "S"]
], "D") ➞ 3

# "D" shows up 3 times: twice in the first row, once in the third row.

letter_counter([
  ["D", "E", "Y", "H", "A", "D"],
  ["C", "B", "Z", "Y", "J", "K"],
  ["D", "B", "C", "A", "M", "N"],
  ["F", "G", "G", "R", "S", "R"],
  ["V", "X", "H", "A", "S", "S"]
], "H") ➞ 2
Notes
You will always be given an array with five sub-arrays.
'''


def letter_counter(arr, s)
    count  = 0
    for i in arr do 
        #print i
        #print("\n")
        for j in i
            if j.to_s == s.to_s
                count += 1
                #puts count
            end
        end
    end 
    return count 

end


puts letter_counter([
    ["D", "E", "Y", "H", "A", "D"],
    ["C", "B", "Z", "Y", "J", "K"],
    ["D", "B", "C", "A", "M", "N"],
    ["F", "G", "G", "R", "S", "R"],
    ["V", "X", "H", "A", "S", "S"]
  ], "D")


#puts letter_counter([
#    ["D", "E", "Y", "H", "A", "D"],
#    ["C", "B", "Z", "Y", "J", "K"],
#    ["D", "B", "C", "A", "M", "N"],
#    ["F", "G", "G", "R", "S", "R"],
#    ["V", "X", "H", "A", "S", "S"]
#  ], "H")