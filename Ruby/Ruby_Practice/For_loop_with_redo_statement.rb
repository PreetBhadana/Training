# For loop with redo statement

for i in 0..5
    if i < 2 then
        puts "value is #{i}"
        redo

    end

end