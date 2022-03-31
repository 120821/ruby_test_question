# 判断某个数是否是质数
def is_prime_number n
    puts "-------n is #{n}------"
    #1是质数
    if n == 1
    puts "-----------n=0 return true---------"
    return true
    end
    #对2到n所有数进行遍历
    for i in 2..n
      puts "--------------i is #{i}  n is #{n}-----"
      #如果n/i余数为0 且i不是1和自身
     if n % i == 0 && i != 1 && i != n
       puts "-----i is #{i} n is #{n}===n%i=== #{n % i}"
       #那么 i不是质数
       return false
     end
    end
    #否则i是质数
    return true
end


# 获得n 以内的质数
def get_all_prime_numbers n
  result = []
  for i in (1..n)
    if is_prime_number i
      result.push i
    end
  end
  return result
end

# 交替进行质数的加减法
def special_sum n
  all_prime_numbers = get_all_prime_numbers n
  sum = 0

  # 遍历这个所有的质数的数组，并且： 奇数是相加，偶数是 相减
  # 设置起始的位置
  i = 0
  loop do

    # 对数组的当前元素， 做一些操作。
    prime_number = all_prime_numbers[i]

    # 当前的元素是第奇数个的话
    if (i + 1 ) % 2 == 1
      sum = sum + prime_number
    else
      sum = sum - prime_number
    end

    # 位置+ 1 （）准备操作下一个元素
    i = i + 1

    # 判断跳出循环的条件
    break if i == all_prime_numbers.size
  end

  return sum
end

#puts "result is: #{is_prime_number(7)}"
puts "all prime numbers: #{get_all_prime_numbers(10)}"

puts "result: #{ special_sum 10 } "
