def fib(n)
  return [0] if n == 1

  arr = [0, 1]
  (n - 2).times do
    arr.push(arr.last(2).reduce { |a, n| a + n })
  end
  arr
end

def fib_rec(n, arr = [])
  if n == 2
    arr.push(0)
    arr.push(1)
    return
  end
  fib_rec(n - 1, arr)
  arr.push(arr.last(2).reduce { |a, n| a + n })
end

print fib(8)
puts
print fib_rec(8)
