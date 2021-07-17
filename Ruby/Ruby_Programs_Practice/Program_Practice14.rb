'''
Easy 3

Create a function that takes two strings and returns either true or false depending on whether they\'re anagrams or not.

Examples
is_anagram("cristian", "Cristina") ➞ true

is_anagram("Dave Barry", "Ray Adverb") ➞ true

is_anagram("Nope", "Note") ➞ false
'''



def is_anagram(x, y)
    str1 = x
    str2 = y

    if str1.length != str2.length
        return false
    else
        ctr = 0
        str1.each_char { |i|
            str2.each_char {|j|
                if i == j
                    #print i+" "+j
                    ctr = ctr + 1
                    str2.delete!(j)
                    #puts
                end
            }
            #print("\n")
        }
        #puts ctr
        #puts str1.length
        if ctr == str1.length
            return true
        else
            return false
        end
        
    end
end

str1 = "geeksforgeeks"
#str1 = "test"
str2 = "forgeeksgeeks"
#str2 = "estt"
puts is_anagram(str1, str2)
#puts str1.length
