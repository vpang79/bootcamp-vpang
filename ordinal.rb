#Ordinal Challenge for UT Boot Camp
#Created by Vincent Pang

def ordinal(number)
    remainder = number % 10
    is_eleven = number % 100
    string = number.to_s
    first = "st"
    second = "nd"
    third = "rd"
    orth = "th"
    
    if remainder == 1 && is_eleven != 11
        return string + first
    
    elsif remainder == 2 && is_eleven != 12 
        return string + second
    
    elsif remainder == 3 && is_eleven != 13 
        return string + third
    
    elsif remainder > 3 || is_eleven > 3 || number == 0
        return string + orth
    end
end

puts "Enter a whole number, please."

answer = gets.chomp

number = answer.to_i

if number >= 0
    greeting = "Your number is the #{ordinal(number)}."

else puts "Thats not a valid number"

end
puts greeting