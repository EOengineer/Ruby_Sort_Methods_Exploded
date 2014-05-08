require 'pry'

class Array
  def quick_sort
    sorted_array = Array.new
    if self.size <= 1
      self
    else
      pivot = self.sample
      self.delete_at(self.index(pivot))
      less = Array.new
      greater = Array.new
    end
    self.each do |x|
      if x <= pivot
        less << x
      else
        greater << x
      end
    end
    sorted_array << less.quick_sort
    sorted_array << pivot
    sorted_array << greater.quick_sort
    sorted_array.flatten
  end
end
array = [5, -5, 11, 0, 3]
puts array.quick_sort
