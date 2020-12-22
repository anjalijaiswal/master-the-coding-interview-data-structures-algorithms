# insertion sort
# [5,2,6,7,1]

def insertion_sort(arry)
  result = []
  arry.each_with_index do |ele, i|
    # smallest = i
    # length.times do |j|
    #   smallest = j if arry[j] < arry[i]
    # end
    # arry[i], arry[smallest] = arry[smallest], arry[i]
    if arry[i] > arry[i + 1]
      result = add_element(result, arry[i])
    else
      result << aryy[i]
    end
  end
  arry
end

def add_element(arry, ele)
  if arry.empty?
    arry << ele
  else
  end
end

puts insertion_sort([5,2,6,7,1])
