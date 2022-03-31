def sum_to_3000

  result = 0
  i = 0
  loop do

    result  = result + i
    puts "===  i : #{i}, result: #{result}"

    i = i + 1
    if i > 3000
      break
    end
  end

  return result

end

puts sum_to_3000()
