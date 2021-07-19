'''
Medium 6

Create a function that determines whether a shopping order is eligible for free shipping. An order is eligible for free shipping if the total cost of items purchased exceeds $50.00.

Examples
free_shipping({ "Shampoo" => 5.99, "Rubber Ducks" => 15.99 }) ➞ false

free_shipping({ "Flatscreen TV" => 399.99 }) ➞ true

free_shipping({ "Monopoly" => 11.99, "Secret Hitler" => 35.99, "Bananagrams" => 13.99 }) ➞ true
Notes
Ignore tax or additional fees when calculating the total order cost.

'''


def free_shipping(has)
    #puts has
    sum = 0
    has.each do |k, v|
        sum = sum + v
    end
    if  sum >= 50
        return true
    else
        return false
    end 

end 


puts free_shipping({ "Shampoo" => 5.99, "Rubber Ducks" => 15.99 })

puts free_shipping({ "Flatscreen TV" => 399.99 })

puts free_shipping({ "Monopoly" => 11.99, "Secret Hitler" => 35.99, "Bananagrams" => 13.99 })