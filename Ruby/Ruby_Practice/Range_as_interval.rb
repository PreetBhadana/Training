# Range as Interval

if ((1..10) === 5)
    puts "5 lies in (1..10)"
end

if (('a'..'j' === 'c'))
    puts "c lies in (a..j)"
end

if (('a'..'j') === 'z')
    puts "'z' lies in (a..j)"
else puts "False"
end

