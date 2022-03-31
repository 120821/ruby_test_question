#判断某个数是否是质数
def prime_number n
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

#获取n以内的所有质数
def get_all_prime_number n
  result = []
  for i in 1..n
    result.push i if prime_number i
  end
  return result
end

puts get_all_prime_number 4

#n以内质数进行加减法
def special_sum n
  #获取所有的质数，调用方法
  all_prime_numbers = get_all_prime_number n
  #设置初始值
  sum = 0

  #设置变量i，对质数数组的所有质数进行遍历。奇数位置是相加，偶数位置是相减。
  #i的初始值是0
  i = 0
  #使用loop do的方法
  loop do
  #调用质数数组，进行判断
    prime_number = all_prime_numbers[i]

    #当前元素是第奇数个的话，进行相加，
    #当前元素是偶数个的话，进行相减
    if (i + 1) % 2 == 1
      sum = sum + prime_number
    else
      sum = sum - prime_number
    end

    #位置进行+1 进入下一个元素进行循环
    i = i + 1
    #判断跳出循环的条件
    break if i == all_prime_numbers.size
  end
  return sum
end

puts special_sum 7
