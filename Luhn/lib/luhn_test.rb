class Luhn
  def is_valid?(number)
    @odd_array = []
    @even_array = []
    @rev_array = number.digits

    @rev_array.each_with_index do |x, y|
      if y.even?

        @even_array.push(x)
      else
        x = 2 * x
        if x > 9
          x = x - 9
        end
        @even_array.push(x)        
      end
      @sum = @even_array.inject(0){|sum, n| sum + n }
    end
      if @sum % 10 == 0
        return true
      else
        return false
      end
    end
  end

test = Luhn.new
answer = test.is_valid?(4194560385008504)
print "#{answer}\n"