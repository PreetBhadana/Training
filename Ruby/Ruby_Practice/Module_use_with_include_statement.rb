#Include Module of name support.rb
$LOAD_PATH << '.'

require 'support.rb'

class Decode
    include Week
    no_of_year = 10
    def no_of_months
        puts Week::FIRST_DAY
        number = 10*12
        puts number
    end
end

d1 = Decode.new
puts Week::FIRST_DAY
Week.weeks_in_month
Week.weeks_in_year
d1.no_of_months