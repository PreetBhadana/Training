# Class exmple with methods and objects ---

class Customer 
    @@no_of_customer = 0
    def initialize(id, name, addr)
        @cust_id = id
        @cust_name = name
        @cust_address = addr
        puts ("id : "+@cust_id+" name : "+@cust_name+" address : "+@cust_address)

    end

end

cust1 = Customer.new("1","Preet","India")
cust2 = Customer.new("2","Neha","India")
