class Image
  attr_accessor :data

  def initialize(data)
    @data = data
  end

  def get_ones
    ones = []
    @data.each_with_index do | x, row_number |
      x.each_with_index do | value, col_number |
        if value == 1
          ones << [row_number, col_number]
        end
      end
    end
    ones
  end

  def number_of_rows
    @data.length
  end

  def number_of_columns
    @data[0].length
  end

  def blur
    ones = get_ones

    @data.each_with_index do | x, row_number |
      x.each_with_index do | value, col_number |
        ones.each do | row_number_with_one, col_number_with_one |

          if row_number == row_number_with_one && col_number == col_number_with_one
            @data[row_number - 1][col_number] = 1 unless row_number == 0
            @data[row_number + 1][col_number] = 1 unless row_number >= (number_of_rows - 1)
            @data[row_number][col_number - 1] = 1 unless col_number == 0
            @data[row_number][col_number + 1] = 1 unless col_number >= (number_of_columns - 1)
          end
        end
      end
    end
    return Image.new(@data)
  end
end
