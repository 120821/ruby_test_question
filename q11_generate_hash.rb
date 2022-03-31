
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

