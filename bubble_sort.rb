def bubble_sort(array)
  swap_made = true
  while swap_made
    swap_made = false
    (array.length - 1).times do |i|
      if array[i] > array[i + 1]
        temp = array[i]
        array[i] = array[i + 1]
        array[i + 1] = temp
        swap_made = true
      end
    end
  end
  array
end

def bubble_sort_by(array)
  swap_made = true
  while swap_made
    swap_made = false
    (array.length - 1).times do |i|
      if yield(array[i], array[i + 1]) > 0
        temp = array[i]
        array[i] = array[i + 1]
        array[i + 1] = temp
        swap_made = true
      end
    end
  end
  array
end
