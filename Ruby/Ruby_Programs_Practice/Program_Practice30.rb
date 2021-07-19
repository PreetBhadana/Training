'''
Very Hard 1

Create a function that returns the simplified version of a fraction.

Examples
simplify("4/6") ➞ "2/3"

simplify("10/11") ➞ "10/11"

simplify("100/400") ➞ "1/4"

simplify("8/4") ➞ "2"
Notes
A fraction is simplified if there are no common factors (except 1) between the numerator and the denominator. For example, 4/6 is not simplified, since 4 and 6 both share 2 as a factor.
If improper fractions can be transformed into integers, do so in your code (see example #4).

'''

def simplify(s)
    str1 = s.split('/')
    arr1 = []
    #puts str1
    #puts str1.class
    for i in str1
        #puts i
        arr1.append(i.to_i)
        
    end
    #puts arr1
    num1 = arr1[0]
    #puts num1
    num2 = arr1[1]
    #puts num2

    #for i in arr1
        #puts i
        #puts i.class

    #end

    def comman_fact(num1, num2)
        if num1 < num2
            small = num1
        else
            small = num2
        end
        #puts small
        #puts num1
        #puts num2
        for i in 2..small
            if (num1% i == 0 && num2 % i == 0)
                hcf = i
                #break
                
            end
        end
        num1 = num1/hcf 
        num2 = num2/hcf
        
        if num1/10 != 0 && num2/10 != 0
            comman_fact(num1, num2)
        end
        return num1.to_s+"/"+num2.to_s
    end
    comman_fact(num1, num2)

end

puts simplify("12/18")

#puts simplify("10/11")
    
#puts simplify("100/400")
    
#puts simplify("8/4")