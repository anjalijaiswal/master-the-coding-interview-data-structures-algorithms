# Rule one implementation
def find_nemo1(array)
  array.each do |item|
    puts('Found NEMO!') if item == 'nemo'
  end
end

find_nemo1(['nemo'])
