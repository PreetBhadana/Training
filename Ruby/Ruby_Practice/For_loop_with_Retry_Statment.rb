# For loop with Retry Statment 
'''
for i in 0..5 do
if i > 2 then
        puts "Value of local variable is #{i}"
        retry
    end

end
'''

for i in 0..5
    retry if i > 2
puts "Value of local variable is #{i}"
end