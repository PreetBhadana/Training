# Local Variable ---
'''
Variable avilabe for local scope like if made in function then avilable in that
 function only or if made in loop then avilable in that loop only.
'''
 puts "Local Variable ---"
10.times do
    x = 10
    p x
    # p is short form of puts 
end



# GLobal Variable ---
''' 
starts with $ sign.
Variable avilable anywhere eithe declare for that block or not.
'''
puts "GLobal Variable ---"

10.times do
    $x = 10
end
p $x


# Instance Variables ---

'''
starts with @ sign and then variable name.
when instance variable is a variable which is avilable to that
    instance variable will not avilable for any other method or cant be use
    in other method.
eg ---
'''
@batiing_var = 300
p @batiing_var


# Constant Variable ---

'''
Variable name Always be in capital letters like TEAM
In Ruby if we change data of constant variable then first it will show
warning and then for practice it will change/ update the data of constant.

EG ---
'''
TEAM = "Angels"
p TEAM
TEAM = "Athelets"
p TEAM



# Class Variables ---

'''
The variable avilable to the instance of the class only
eg --
'''
class MyClass
    @@team = "Athletic"
    p @@team
end

