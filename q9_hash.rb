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

