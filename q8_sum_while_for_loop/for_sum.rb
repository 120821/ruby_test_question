def for_sum_3000
 i = 0
 result = 0
  for i in 0..3000
    i +=1
    result = i + result
    puts result
  end
end

puts for_sum_3000()
