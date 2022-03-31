# 判断某个数是否是质数
def is_prime n
  puts "----------- in is_prime "
  if n == 1
    puts "---  n == 1, result: true"
    return true
  end

  # 如果n > 1 的化
  for i in (1..n)
    puts "---  n >  1, checking: i is: #{i}, n is: #{n}"
    if n % i == 0 && i != 1 && i != n
      puts "----- found divisor #{i}: is NOT prime"
      return false
    end
  end

  puts "----- divisor not found"
  # 如果上面的条件都不满足的话，返回false
  return true

end

# 获得 n 以内的质数的和
def get_all_prime_sum_less_then_n n
  sum = 0
  for i in (1..n)
    puts "== in get_all_prime_sum_less_then_n, for, i: #{i}"

    # i 是否是质数
    is_i_prime = is_prime(i)
    puts "==== number: #{i} is prime? #{is_i_prime}"

    # 如果i是质数的话，就加和
    if is_i_prime
      sum = sum + i
    end
  end

  return sum
end

# 1,2,3,5,7
puts get_all_prime_sum_less_then_n 10
