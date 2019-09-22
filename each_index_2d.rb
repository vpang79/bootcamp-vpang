values = [["A", "B", "C", ], ["D", "E", "F"], ["G", "H"]]

values.each_index do |i|

  subarray = values[i]
  subarray.each_index do |x|
    puts String(i) << " " << String(x) << "..." << values[i][x]
  end
end


