'''
Very hard 2

Traveling through Europe one needs to pay attention to how the license plate in the given country is displayed. When crossing the border you need to park on the shoulder, unscrew the plate, re-group the characters according to the local regulations, attach it back and proceed with the journey.

Create a solution that can format the dmv number into a plate number with correct grouping. The function input consists of a string s and group length n. The output has to be upper case characters and digits. The new groups are made from right to left and connected by -. The original order of the dmv number is preserved.

Examples
license_plate("5F3Z-2e-9-w", 4) ➞ "5F3Z-2E9W"

license_plate("2-5g-3-J", 2) ➞ "2-5G-3J"

license_plate("2-4A0r7-4k", 3) ➞ "24-A0R-74K"

license_plate("nlj-206-fv", 3) ➞ "NL-J20-6FV"

'''

def license_plate(s, n)
    str1 = s.split('-')
    #str1.to_s
    #puts str1
    for i in str1
        #puts i
        i.upcase!
        #puts i

    end
    #puts str1
    #puts str1.reverse
    str1 = str1.join
    #puts str1
    #puts str1.class
    str1 =  str1.reverse
    #puts str1
    ctr = 0
    str2 = ""
    str1.each_char do |s|    
        ctr +=1
        str2 = str2 +s
        if ctr % n == 0
            str2 = str2+"-"
        end

        
    end

    str2 = str2.reverse
    
    if str2[0] == "-"
        str2[0] = ''
    end
    return str2
end

puts license_plate("5F3Z-2e-9-w", 4)

puts license_plate("2-5g-3-J", 2)

puts license_plate("2-4A0r7-4k", 3)

puts license_plate("nlj-206-fv", 3)