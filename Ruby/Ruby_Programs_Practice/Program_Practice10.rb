'''
Very Easy 10

Create a function that takes a string as its argument and returns the string in reversed order.

Examples
reverse("Hello World") ➞ "dlroW olleH"

reverse("The quick brown fox.") ➞ ".xof nworb kciuq ehT"

reverse("Edabit is really helpful!") ➞ "!lufpleh yllaer si tibadE"

'''

'''
def reverse_test(s)
    return s.reverse

end
'''


def reverse_test(s)
    i = -1
    c = -s.length
    #str1 = ""
    while i >= c do
         str1 = str1.to_s + s[i].to_s
         i = i - 1
    end
    return str1
end



puts reverse_test("Hello World")