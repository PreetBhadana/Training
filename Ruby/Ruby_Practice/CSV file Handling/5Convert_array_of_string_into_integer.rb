# Convert column as array of string into integer --

require 'csv'

print CSV.parse("1,2,3,4,5")
#[["1", "2", "3", "4", "5"]]
print "\n"
print CSV.parse("1,2,3,4,5", converters: :numeric)
#[[1, 2, 3, 4, 5]]
print "\n"
