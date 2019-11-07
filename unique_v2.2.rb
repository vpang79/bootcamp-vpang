#Coding Activity for Lesson 32
#Unique array Version 2 that uses Array#uniq

def unique(numbers)
    output = []
    
            numbers.each do |num|
                if output.include?(num)

                else
                output.push(num)
               end
            end

        return output
end

numbers = [1, 2, 3, 2, 1, 6, 9, 10, 11, 11, 11, 12]

puts "this #{unique(numbers).inspect}"




