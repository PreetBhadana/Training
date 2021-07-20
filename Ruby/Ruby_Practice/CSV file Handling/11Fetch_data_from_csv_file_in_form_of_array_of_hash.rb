# fetch data from csv file in form of array of hash

require 'csv'

employee_details = []

CSV.foreach("Employee_details.csv", headers: true, header_converters: :symbol) do |row|
    employee_details << row.to_h

end
print employee_details,"\n"
print employee_details.class,"\n"
print employee_details[0],"\n"
print employee_details[0].class,"\n"


