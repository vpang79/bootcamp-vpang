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


  def blur(distance)
    ones = get_ones

    @image.each_with_index do | x, row_number |
      x.each_with_index do | value, col_number |
        ones.each do | row_number_with_one, col_number_with_one |

          if manhattan_distance(col_number, row_number, col_number_with_one, row_number_with_one) <= distance
            @image[row_number][col_number]  =1
          end

        end
      end
    end
  end


  def manhattan_distance(x1, y1, x2, y2)
    h_distance = (x2 - x1).abs
    v_distance = (y2 - y1).abs

    h_distance + v_distance
  end

 
  def output_image
    @image.each do |image_row|
      puts image_row.join
    end
  end
end

image = Image.new([
[0, 0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0, 0],
[0, 0, 0, 1, 0, 0, 0],
[0, 0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0, 1]
])

image.output_image

puts
image.blur(3)

image.output_image


