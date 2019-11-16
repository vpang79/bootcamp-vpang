module Luhn
  def self.is_valid?(number)
    @new_array = []
    @rev_array = number.digits

    @rev_array.each_with_index do |x, y|
      if y.even?
        @new_array.push(x)
      else
        x = 2 * x
        if x > 9
          x = x - 9
        end
        
        @new_array.push(x)        
      end
      
      @sum = @new_array.inject(0){|sum, n| sum + n }
    end

    if @sum % 10 == 0
      return true
    else
      return false
    end
  end
end


