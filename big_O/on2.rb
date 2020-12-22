# O(n^2) example: nested loops
# rule 3
# log all pair of array

def log_pair(array)
  pair = []
  array.each do |item|
    array.each do |item2|
      pair << "#{item} #{item2}"
    end
  end
  puts pair
end

log_pair([1, 2, 3, 4, 5])
