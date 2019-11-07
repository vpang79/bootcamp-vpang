def is_even?(num)
    remainder_when_divided_by_2 = num % 2
    
    if remainder_when_divided_by_2 == 0
        return true
    else
        return false
        
    end
end

def is_odd?(num)
    return ! is_even?(num)
    
end

def is_even_and_divisible_by_five?(num)

    remainder_when_divided_by_5 = num % 5
    
    if is_even?(num) && remainder_when_divided_by_5 == 0
        return true
    else 
        return false        
    end
end

puts "1 is_even? #{is_even?(1)} - is_odd? #{is_odd?(1)} - is_even_and_divisible_by_five? #{is_even_and_divisible_by_five?(1)}"
puts "2 is_even? #{is_even?(2)} - is_odd? #{is_odd?(2)} - is_even_and_divisible_by_five? #{is_even_and_divisible_by_five?(2)}"
puts "3 is_even? #{is_even?(3)} - is_odd? #{is_odd?(3)} - is_even_and_divisible_by_five? #{is_even_and_divisible_by_five?(3)}"
puts "4 is_even? #{is_even?(4)} - is_odd? #{is_odd?(4)} - is_even_and_divisible_by_five? #{is_even_and_divisible_by_five?(4)}"
puts "5 is_even? #{is_even?(5)} - is_odd? #{is_odd?(5)} - is_even_and_divisible_by_five? #{is_even_and_divisible_by_five?(5)}"
puts "6 is_even? #{is_even?(6)} - is_odd? #{is_odd?(6)} - is_even_and_divisible_by_five? #{is_even_and_divisible_by_five?(6)}"
puts "5 is_even? #{is_even?(15)} - is_odd? #{is_odd?(15)} - is_even_and_divisible_by_five? #{is_even_and_divisible_by_five?(15)}"
puts "6 is_even? #{is_even?(30)} - is_odd? #{is_odd?(30)} - is_even_and_divisible_by_five? #{is_even_and_divisible_by_five?(30)}"