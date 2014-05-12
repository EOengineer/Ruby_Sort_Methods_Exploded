require 'pry'

class Array
  def quicksort
    pivot = self.size/2
    left = self[0]
    right = self[-1]

    while left < right
      while self[left] < pivot
        left += 1
      while self[right] > pivot
        right -= 1
      end
    end
    end
  end
end
