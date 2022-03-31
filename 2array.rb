def generate_array n
  result =[]

  for i in (1..n)
    small_array = []
    for i in (1..i)
      small_array.push(i)
    end
    result.push(small_array)
  end
  return result
end

puts generate_array(5).inspect
