def generate_small_array n
  result = []
  i = 1
  loop do
    result.push(n)

    i = i + 1
    if i > n
      break
    end
  end
  return result
end

def generate_array n
  result = []
  i = 1
  loop do
    small_array = generate_small_array(i)
    result.push(small_array)

    i =  i + 1
    if i > n
      break
    end
  end
  return result
end

puts generate_array(5).inspect

