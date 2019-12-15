def collatz(n, iterator = 0)
  x = iterator + 1

  if n == 1
    return x
  elsif n.even?
    n = n / 2
  else 
    n = 3 * n + 1
  end
  collatz(n, x)  
end

max_length = 1
max_number = 1

999999.times do |n|
  n = n + 1
  current_length = collatz(n)
    # if current length is greater than max length, then max length == current length, 
    # and max number == current number.
    if current_length > max_length
      max_length = current_length
      max_number = n
    end
end

puts max_number
puts max_length

# 837799 is the number with the longest Collatz sequence of 525.

