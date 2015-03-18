
test = [6,4,8,2,1,3,5,9,7,10]

swap = 1
stopper = test.length - 1

until swap <= 0
  swap = 0 
  stopper.times do |n|

    if test[n] > test[n + 1]
      swap += 1
      temp = test[n + 1]
      test[n + 1] = test[n]
      test[n] = temp
    end

  end
  stopper -= 1
end

puts test
