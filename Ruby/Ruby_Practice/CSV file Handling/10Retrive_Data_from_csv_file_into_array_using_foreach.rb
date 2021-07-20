#Retrive Data from csv file into array using foreach 
require 'csv'

employee_details = []

#It will return the data from employee_details.csv file into array line by line.
#CSV.foreach("Employee_details.csv") do |row|
#    employee_details << row
#end

#print employee_details

# Let we add header: true and header_converters: :symbol

CSV.foreach("Employee_details.csv", headers: true, header_converters: :symbol) do |row|
    employee_details << row
end

#print employee_details,"\n"
#print employee_details.class,"\n"
print employee_details[0],"\n"

