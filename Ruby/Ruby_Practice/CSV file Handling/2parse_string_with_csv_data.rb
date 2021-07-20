# CSV File handling -- parse method ro parse the string with csv data--

require 'csv'
res = CSV.parse ("1, Chocolate\n2, Banana\n3, Apple")
puts res