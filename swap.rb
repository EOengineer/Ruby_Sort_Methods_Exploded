require 'pry'

test = (1..10).to_a
test[9], test[0] = test[0], test[9]

puts test
