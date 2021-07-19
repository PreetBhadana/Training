'''
Medium 5

Write a function that finds the longest word in a sentence. If two or more words are found, return the first longest word. Characters such as apostophe, comma, period (and the like) count as part of the word (e.g. O\'Connor is 8 characters long).

Examples
longest_word("Hello darkness my old friend.") ➞ "darkness"

longest_word("Hello there mate.") ➞ "Hello"

longest_word("Margaret\'s toy is plastic.") ➞ "Margaret\'s"

'''

def longest_word(s)
    a =  s.split(' ')
    max_i = []
    for i in a
        #puts i.length
        min_i = i

        if max_i.length < min_i.length
            max_i = min_i
        end
    end
    return max_i
end 

puts longest_word("Hello there mate.")

puts longest_word("Hello darkness my old friend.")

puts longest_word("Margaret's toy is plastic.")
