# Methods In Ruby

# 1) Simple method ---
def hello()
    puts "Hello World"
end
hello()


# 2) Parametrized Methods ---

def sum(a, b)
    puts "Sum is #{a + b}"
end
sum(5, 10)

# 3) Default Value parametrized method ---

def test(a = "Ruby", b = "Perl")
    puts "1st is #{a}"
    puts "2nd is #{b}"
end

test "C", "C++"
test