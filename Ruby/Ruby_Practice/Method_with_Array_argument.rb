# Array as argument in method
def sample(*test)
    puts "No. of arguments #{test.length}"
    for i in 0...test.length
        puts "The parameter are #{test[i]}"
    end
end
sample "Zara", "6", "F"

sample("Joe", "36", "M", "MCA")