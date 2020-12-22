# selection sort
# [5,2,6,7,1]

def selection_sort(arry)
  length = arry.size - 1
  length.times do |i|
    smallest = i
    length.times do |j|
      smallest = j if arry[j] < arry[i]
    end
    arry[i], arry[smallest] = arry[smallest], arry[i]
  end
  arry
end

puts selection_sort([5,2,6,7,1])
