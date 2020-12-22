# bubble sort
# [5,2,6,7,1]

def bubble_sort(arry)
  length = arry.size - 1
  loop do
    swapped = false
    length.times do |j|
      if arry[j + 1] < arry[j]
        arry[j + 1], arry[j] = arry[j], arry[j + 1]
        swapped = true
      end
    end
    break if swapped == false
  end
  arry
end

puts bubble_sort([5,2,6,7,1])
