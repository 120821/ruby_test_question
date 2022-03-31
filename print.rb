def hi_print width, heigth, charactor

  heigth_index = 0
  loop do

    width_index = 0
    loop do
      puts charactor

      width_index = width_index + 1
      if width_index >= width
        print "\n\r"
        break
      end

    end

    heigth_index = heigth_index + 1

    if heigth_index >= heigth
      break
    end
  end

end

hi_print(5,2,'a')
