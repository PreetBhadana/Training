#Retrive data from csv file

require 'csv'
# It will return the file data in form of array.
afile = CSV.read("Employee_details.csv")
print afile,"\n"
puts afile.class

# It will return data in from of table.
table = CSV.parse(File.read("Employee_details.csv"), headers: true)
print table,"\n"
puts table.class

print table[0][0],"\n"
print table[0]["Name"].class,"\n"
