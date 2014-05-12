require 'pry'

class Array
  def quicksort
    return self if self.size <= 1

    pivot_i = (self.size/2).to_i
    pivot_v = self[pivot_i]
    self.delete_at(pivot_i)
    lower = Array.new
    higher = Array.new

    self.each do |n|
      if n <= pivot_v
        lower << n
      else
        higher << n
      end
    end
    return lower.quicksort + [pivot_v] + higher.quicksort
  end
end

array = [1,7,5,3,10,6,4,2,9,8]
puts array.quicksort
