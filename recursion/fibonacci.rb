# fibonacci implementation
# 0 1 1 2 3 5 8 13 21
def fibonacci(x)
  return x if x < 2
  fibonacci(x - 1) + fibonacci(x - 2)
end


puts fibonacci(9)
