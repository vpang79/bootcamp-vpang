values = []

subarray = []
subarray.push(1)
subarray.push(2)
subarray.push(3)

values.push(subarray)

subarray = []
subarray.push(10)
subarray.push(20)
subarray.push(30)

values.push(subarray)

puts "Third element in first row is: " << String(values[0][2])

values[1][1] = 500

values.each do |x|
  x.each do |y|
    puts y
  end
  puts "--"
end
