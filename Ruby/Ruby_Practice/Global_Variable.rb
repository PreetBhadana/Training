#Global Variable

$global_var = 10
class Customer
    def print_global
        puts("Global Variable in class 1 is #{$global_var}")
    end
end

class Customer2
    def print_global
        puts("Global Variable in class 2 is #$global_var")
    end
end

cust1 = Customer.new
cust1.print_global
cust2 = Customer2.new
cust2.print_global