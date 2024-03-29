# Range as condition 
'''
while gets
    print if /start/../end/
end
'''

## Similar --- Use with case statements ---

score = 73

result = case score
    when 0..40 then "Fail"
    when 41..60 then "Pass"
    when 61..70 then "Pass with Merit"
    when 71..100 then "Pass with Distinction"
    else "Invalid Score"
    end

    puts result