# Test Created modules
$LOAD_PATH << '.'

require 'trig.rb'
require 'mortal'

y = Trig.sin(Trig::PI/4)
puts y

wrongdoing = Mortal.sin(Mortal::VERY_BAD)
puts wrongdoing