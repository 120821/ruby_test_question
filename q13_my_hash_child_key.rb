def generate_hash(n)
  result = {}
  for i in (1..n)
    hash = {"child#{i}" => "value#{i}"}
    for i in (1..i)
      result["parent#{i}"] = hash
    end
  end
  return result
end

puts generate_hash(5)



def generate_hash(n)
  result = {}
  i = 1
  loop do
    result["key #{i}"] = "string #{i}"
    i = i +1
    if i > n
      break
    end
  end
  return result
end

puts generate_hash(3)

