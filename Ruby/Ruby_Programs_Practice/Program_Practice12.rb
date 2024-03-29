'''
Easy 1
Build a function that creates histograms. Every bar needs to be on a new line and its length corresponds to the numbers in the array passed as an argument. The second argument of the function represents the character that needs to be used.

histogram(lst, char) -> str
Examples
histogram([1, 3, 4], "#") ➞ "#\n###\n####"

#
###
####

histogram([6, 2, 15, 3], "=") ➞ "======\n==\n===============\n==="

======
==
===============
===

histogram([1, 10], "+") ➞ "+\n++++++++++"

+
++++++++++

'''
def histogram(lis, cha)
    for i in lis
       puts cha*i+"\n"
    end    

end

histogram([6, 2, 15, 3], "=")
