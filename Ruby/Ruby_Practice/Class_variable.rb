
class Customer
    @@no_of_customers = 0
    def initialize(id, name, addr)
            @cust_id = id
            @cust_name = name
            @cust_addr = addr
    end
    def details()
            puts "Customer id : #@cust_id"
            puts "Customer name : #@cust_name"
            puts "Customer address : #@cust_addr"
    end
    def total_no_customers()
            @@no_of_customers += 1
            puts "Total No of Customers : #@@no_of_customers"
    end
end
cust1 = Customer.new("1","Preet","India")
cust2 = Customer.new("2","Nitin","India")
cust3 = Customer.new("3","Aman","India")
cust1.details()
cust1.total_no_customers()
cust2.details()
cust2.total_no_customers()
cust3.details()
cust3.total_no_customers()