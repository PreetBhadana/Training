#Iterators
#1 Each --

ary = [1,2,3,4,5]
ary.each do |i|
    p i
end



#2 Collect ---

a = [1,2,3,4,5]
b = Array.new
b = a.collect
puts b


# Similarly --
a = [1,2,3,4,5]
b = a.collect {|x| 10*x}
puts b

