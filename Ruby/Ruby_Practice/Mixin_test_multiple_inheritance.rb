#Mixin_test_multiple_inheritance.rb

$LOAD_PATH << '.'

require 'mixin_test.rb'


class Sample
    include A
    include B
    def s1
        puts "class Sample method s1"
    end
end

samp = Sample.new
samp.a1
samp.a2
samp.b1
samp.b2
samp.s1