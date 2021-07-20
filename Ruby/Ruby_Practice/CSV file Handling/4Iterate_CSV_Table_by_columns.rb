# Iterate CSV Table by columns ---

require 'csv'
table = CSV.parse(File.read("test_food.csv"), headers: true)

#for i in 0...table.length
#    puts table[i]['id']+" : "+table[i]['name']

#end


print table.by_col[0]
print "\n"
print table.by_col[1],"\n"