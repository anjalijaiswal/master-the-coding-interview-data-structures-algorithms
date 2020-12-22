def factorial(num)
  return num if num == 2

  num * factorial(num - 1)
end

puts factorial(5)
