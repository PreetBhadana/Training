#Create a CSV File for practice

require 'csv'

employee = [["Name", "Age", "Gender", "Salary"], ["Preet", 25, "M", 15000], ["Nitin", 23, "M", 26000],["Darvesh Sharma", 24, "M", 15000]]

CSV.open("Employee_details.csv", "w") do |csv|
    
    #csv << employee
    for i in employee
        
        csv << i
    end
end


