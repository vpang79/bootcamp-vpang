def recursive_fib(digit)
  if digit == 0
  return "Not a valid number"
  elsif digit == 1
    return 0
  elsif digit == 2
    return 1
  end
  
  return recursive_fib(digit-1) + recursive_fib(digit-2)
end
      

def iterative_fib(digit)
  x = 0
  y = 0
  z = 1

  if digit == 0
    return "Not a valid number"
  elsif digit == 1
    return y
  elsif digit == 2
    return z
  else 
    (digit-2).times do |turn|
      x = y + z
      y = z 
      z = x     
    end
    return x
  end
end


require 'benchmark'

num = 35

Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib") { iterative_fib(num) }
end