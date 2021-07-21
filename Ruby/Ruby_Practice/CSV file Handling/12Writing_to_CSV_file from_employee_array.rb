# Writing to CSV file from employee array ---
require 'csv'
headers = ["Name", "Age", "Gender", "Email", "Salary", "Address"]
employee = [["Preet", 24, "M", "bhadana5@gmail.com", 15000, "India"],["Nitin", 22, "M", "nitinbhadana@gmail.com", 26000,"India"],["Darvesh", 23, "M", "Darvesh@gmail.com", 15000, "Austrelia"]]

CSV.open("New_Em0loyee.csv", "w",) do |csv|
    csv << headers
    employee.each do |emp|
        csv << emp
    end
end
