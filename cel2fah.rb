#Ruby Program Activity
#Convert degrees Celsius into Fahrenheit

def cel2fah(celcius)
    return (celcius * 9 / 5) + 32
    
end

puts "What is the temperature (in Celcius) you want converted into Fahrenheit?"

celcius = gets.to_f

fahr = cel2fah(celcius)

greetings = "The temperature is #{fahr} degrees Fahrenheit."

puts greetings