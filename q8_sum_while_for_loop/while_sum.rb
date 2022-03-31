def while_sum_3000
  begin
    i = 0
    result = 0

    while i < 3000 do
      i +=1
      result = i + result
      puts result
    end
  end
end

puts while_sum_3000()
