#判断某个数是否是质数
def is_prime_number n
  #如果n为1 ，则n为质数，返回true
  if n == 1
    puts "-------n= 1 返回true"
    return true
  end
  # 设置变量i，初始值为2，对n以内数值进行遍历
  i = 2
  loop do
    puts "------------------i is #{i} n is #{n}"
    #如果i % n 等于0 且 i不是n和i自身。返回false，不是质数
    if n % i == 0 && i != 1 && i != n
      puts " -----------n>2=== n is #{n}   i is #{i} n % i =  #{n % i } 返回false"
      return false
    end
    #让i加一，进行下一个元素的循环
    i = i + 1
    puts "==========i is #{i}"
    if i > n
      break
    end
  end
  #否则，返回true，也就是i为质数
  return true
end
#puts prime_number 4

#获取n以内的质数的和
def get_all_prime_number n
  puts "-----------n is #{n}----"
  result = []
  i = 1
  loop do
    result.push(i) if is_prime_number i
    i = i + 1
    puts "----i is #{i}----n is #{n}----"
    if i > n
      break
    end
  end
  return result
end

#puts get_all_prime_number 7

#获取n以内的质数的和，奇数位置相加，偶数位置相减
def sum_special n
  #定义初始值sum为0
  sum = 0
  #获取n以内的所有质数，调用数组方法，进行遍历
  all_prime_number = get_all_prime_number n
  i = 0
  #使用loop do的方法
  loop do
    puts "----i is #{i}-----n is #{n}----"
    prime_number = get_all_prime_number i
    if (i + 1) % 2 == 0
      puts "i  is  #{i}-----#{i + 1} is i+1 ----(i + 1) % 2  is#{(i + 1) % 2 }"
      puts "sum is #{sum}.......sum - i  is #{sum - i}...."
      sum = sum + i
    else
      puts "sum is #{sum}.....sum + i is #{sum + i}....."
      sum = sum - i
    end
    puts ".....i is #{i}......i + 1 is #{i + 1}"
    i = i + 1
    puts ",,,,,,i is #{i}......n is #{n}....."
    if i > n
      break
    end
  end
  return sum
end

puts sum_special 7
