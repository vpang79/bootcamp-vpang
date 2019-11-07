#FooBar Challenge
#By Vincent Pang

puts "Please enter a number for how long you want this game to go:"

n = gets.chomp

num = n.to_i

def foobar(num)
    play = []
    
    (num + 1).times do |turn|
        is_div_3 = turn % 3
        is_div_5 = turn % 5
        
        if is_div_3 == 0 && is_div_5 == 0 && turn > 0
            play.push("FooBar")
                
        elsif is_div_3 == 0 && is_div_5 != 0
            play.push("Foo")
            
        elsif is_div_5 == 0 && is_div_3 != 0
            play.push("Bar")
        elsif turn == 0
        else 
            play.push(turn)
        end
    end
    return play
end

puts foobar(num)
print "#{foobar(num)}\n"