#CSV Options -- Table
require 'csv'
table = CSV.parse(File.read("test_food.csv"), headers: true)

#puts table
#puts table.class
#puts table[1]['id']
#puts table.length
for i in 0...table.length
    puts table[i]['id']+" : "+table[i]['name']

end
