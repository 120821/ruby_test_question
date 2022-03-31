def pretty_print width, height, charactor

  # 先显示行数
  height_index = 0
  loop do

    # print_line
    width_index = 0
    loop do
      print charactor

      width_index = width_index + 1
      if width_index >= width
        print "\n\r"
        break
      end

    end

    height_index = height_index + 1

    if height_index >= height
      break
    end
  end

end

pretty_print(3, 4, 'b')
puts "==============="
pretty_print(24, 3, '.')
