# Yield Statment using method ---
def test
    puts "You are in method"
    yield 
    puts "You are in method again"
    yield
end
     
test { puts "You are in the block" } 

# Second Example ---

def test
    yield 5
    puts "You are in the method test"
    yield 100
end
test {|i| puts "You are in the block #{i}"}