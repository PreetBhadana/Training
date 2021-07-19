'''
Hard 1

Create a function that returns the nth catalan number.In combinatorial mathematics, the Catalan numbers form a sequence of natural numbers that occur in various counting problems, often involving recursively-defined objects. They are named after the Belgian mathematician Eugène Charles Catalan (1814–1894). For more info, check out the resource tab.

Examples
get_catalan_number(0) ➞ 1

get_catalan_number(6) ➞ 132

get_catalan_number(8) ➞ 1430

'''

def get_catalan_number(n)
    res = 0
    if n <=1
        return 1
    end
    
    for i in 0..n
        res += get_catalan_number(i) * get_catalan_number(n-i-1)
    end 
    return res
end


#puts get_catalan_number(0)

#puts 
get_catalan_number(6)

#puts get_catalan_number(8)
