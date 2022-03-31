def sum_to_100
  result = 0
  i = 0
  loop do

    result = result + i
    puts "===  i : #{i},  result: #{result}"

    i = i + 1
    if i > 3000
      break
    end
  end

  return result

end

puts sum_to_100()

# 1. 使用 普通方法
#
# 2. 使用递归方法 (以后再说也行)
#
#
# 1.
