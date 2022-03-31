#获取参数n中1..n的所有质数的和
def prime(n)
  puts ".............in prime"
  if n == 1
    puts "......i== 1 is true"
    return true
  end
  for i in (1..n)
    puts ",,,i>1   n is #{n},,,,,, is #{i} i,  i % n = #{i % n }"
    if n % i == 0 && i != 1 && i != n
      puts "found divisor i is #{i} is not prime"
      return false
    end
  end

  puts "if not found divisor   return true"
  return true
end


#获取n以内质数的和
def sum_prime n
  sum = 0
  for i in 1..n
    puts "====== in sum_prime, #{i}"
    #判断i是否是质数
    prime = prime(i)
    puts "====number #{i} is prime? #{prime}}"

    #如果是质数就加和
    if prime
      sum = sum + i
    end
  end

  return sum
end

#1,3,2,5,7
puts sum_prime 4


