'''
Easy 4

Create a function that takes three values:

h hours
m minutes
s seconds
Return the value that\'s the longest duration.

Examples
longest_time(1, 59, 3598) ➞ 1

longest_time(2, 300, 15000) ➞ 300

longest_time(15, 955, 59400) ➞ 59400

'''


def longest_time(h, m, s)
    th, tm, ts = 0, 0, 0
    #puts th, tm, ts
    if h == 0
        #print h.to_s+" is zero"
        #Compare with minutes
        if m == 0
            #print m.to_s+" is zero"
            #Compare with seconds
            if s == 0
                #print s.to_s+" is zero\n"
                print "Plz add atleast some value more then zero"
            else
                print s.to_s+" Is Greater1"

            end
        else
            #print m.to_s+" not zero"
            tm = s/60
            if tm > m
                print s.to_s+" Is Greater"
            else
                print m.to_s+" is Greater"
            end
        end


    else
        #print h.to_s+" not zero"
        ts = s/60
        tm = m/60
        th = s/3600
        if th > h and ts > m
            print s.to_s+" Is Greater"
        elsif m > ts and tm > h
            print m.to_s+" Is Greater"
        else
            print h.to_s+" Is Greater"
        end

    end

end

#longest_time(1, 59, 3598)
#longest_time(0, 59, 3598)
#longest_time(0, 998, 3598)

#longest_time(0, 0, 3598)
#longest_time(0, 0, 0)
#longest_time(2, 300, 15000)
longest_time(15, 955, 59400)