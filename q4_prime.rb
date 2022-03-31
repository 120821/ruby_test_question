#判断某个数是否是质数
def is_prime_number(n)
  i = 1
  result = nil
  #设置变量i，初始值为1，result初始值为空，对n以内的每个数进行遍历
  loop do
    puts "=== i : #{i}"
    # 对每个i 都进行取余操作。如果余数是0 && (i != 1 || i != n )，那么该数n 就很可能不是质数
    if n % i == 0 && i != 1 && i != n
      puts "=== is not prime number, n: #{n}, i: #{i}"
      result = false
      break
    end
    #当i大于等于n的时候，停止遍历
    if i >= n
      result = true
      break
    end
    i = i + 1
  end
  return result
end


#获取n以内所有质数
def get_all_prime_number n
  result = []
  for i in 1..n
     result.push i if is_prime_number i
  end
  return result
end

puts get_all_prime_number(8)
