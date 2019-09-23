class Image
  
  def initialize(image)
    @image = image
  end
  
  def get_ones
    ones = []

    @image.each_with_index do | x, row_number |
      x.each_with_index do | value, col_number |
        if value == 1
          ones << [row_number, col_number]
        end
      end
    end
    ones
  end         

  def number_of_rows
    @image.length
  end

  def number_of_columns
    @image[0].length
  end

  def blur
    ones = get_ones

    @image.each_with_index do | x, row_number |
      x.each_with_index do | value, col_number |
        ones.each do | row_number_with_one, col_number_with_one |

          if row_number == row_number_with_one && col_number == col_number_with_one
            @image[row_number - 1][col_number] = 1 unless row_number == 0
            @image[row_number + 1][col_number] = 1 unless row_number >= (number_of_rows - 1)
            @image[row_number][col_number - 1] = 1 unless col_number == 0
            @image[row_number][col_number + 1] = 1 unless col_number >= (number_of_columns - 1)
            
          end
        end
      end
    end
  end
 

  def output_image
    @image.each do |image_row|
      puts image_row.join
    end
  end
end

image = Image.new([
  [0, 0, 0, 0, 0, 0],
  [0, 1, 0, 0, 1, 0],
  [0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0],
  [0, 1, 0, 0, 1, 0],
  [0, 0, 0, 0, 0, 0]
])

image.output_image

puts
image.blur

image.output_image