class Customer
    def initialize(id, name, addr)
        @cust_id = id
        @cust_name = name
        @cust_address = addr
    end
    def details()
        puts "Customer Id : #@cust_id"
        puts "Customer Name :  #@cust_name"
        puts "Customer Address :  #@cust_address"
    end
end

cust1 = Customer.new("1","Preet","India")
cust2 = Customer.new("2","Nitin","India")
cust1.details()
cust2.details