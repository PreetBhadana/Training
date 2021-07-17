'''
Easy 5

Create a function that filters out an array of state names into two categories based on the second parameter.

Abbreviations abb
Full names full
Examples
filter_state_names(["Arizona", "CA", "NY", "Nevada"], "abb")
➞ ["CA", "NY"]

filter_state_names(["Arizona", "CA", "NY", "Nevada"], "full")
➞ ["Arizona", "Nevada"]

filter_state_names(["MT", "NJ", "TX", "ID", "IL"], "abb")
➞ ["MT", "NJ", "TX", "ID", "IL"]

filter_state_names(["MT", "NJ", "TX", "ID", "IL"], "full")
➞ []

'''


def filter_state_names(lis, ty)
    
    case ty
    when "abb"
        a =[]
        lis.each do |i|
            if i.length <= 2
                a.append(i)
    
                #puts i
                #puts i.length
            end

        end
        return a.to_s

    when "full"
        a = []
        lis.each do |i|
            if i.length > 2
                a.append(i)
                #puts i
                #puts i.length
            end
        end
        return a.to_s
    else 
        return "Invalid Type"
    end
end


#puts filter_state_names(["Arizona", "CA", "NY", "Nevada"], "abb")
#puts filter_state_names(["Arizona", "CA", "NY", "Nevada"], "full")
#puts filter_state_names(["MT", "NJ", "TX", "ID", "IL"], "abb")
#puts filter_state_names(["MT", "NJ", "TX", "ID", "IL"], "full")



