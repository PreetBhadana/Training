# Create a new csv file using gerate and open method 

require 'csv'

CSV.open("cats.csv", "w") do |csv|
    csv << [:black, 1]
    csv << [:white, 2]
    csv << [:black_and_white, 3]
end