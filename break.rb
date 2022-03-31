def test
  for i in 1..5
    if i >3 then
      break
    end
    puts "局部变量为#{i}"
  end
  for j in 33..77
    if j >40
      next
    end
    puts "#{j}是字母吗?"
  end
  j = 100
  k = 300
  l = 200
  return j,k,l
end

puts test

def mount
  for j in 33..99
    if j > 55
      next
    end
    puts "is not #{j}"
  end
  for i in 1..109
    if i > 5 then
      break
    end
    puts "局部变量是#{i}"
  end
  a = 299
  b = 999
  c = 000
  return a,b,c
end

puts mount

def age
  for i in 2..28
    if i > 4 then
      break
    end
    puts "#{i}是局部变量"
  end
  for j in 22..100
    if j < 55
      next
    end
    puts "is #{j}"
  end
  lili = 89
  cici = 8
  loyo = 6
  return lili,cici,loyo
end

puts age

def good
  for j in 3..79
    if j >= 5 then
      break
    end
      puts "#{j}是局部变量"
    end
  for i in 33..55
    if i < 36
      next
    end
      puts "#{i}是数字 啊"
    end
  price = 879
  name = 1770
  return price,name
end

puts good

def time
  for u in 4..88
    if  u >= 5
      break
    end
    puts "#{u}是局部变量"
  end
  for i in 4..44
    if i > 22
      next
    end
      puts " 变量是#{i}"
    end
  today = 3.30
  yestoday =3.29
  tomorrow = 3.31
  return today,yestoday,tomorrow
end

puts time

def name
  for i in 4..44
    if i >= 7 then
      break
    end
    puts "#{i}是局部变量"
  end
  for j in 4..55
   if j < 7
     next
   end
   puts "#{j}小于7"
  end
  firstname = "jinping"
  lastname = "xi"
  return firstname,lastname
end
puts name

def book
  for i in 33..55
    if i > 44 then
      break
    end
    puts "#{i}happy"
  end
  for j in 44..55
    if j > 55
      next
    end
    puts "#{j}hhhh"
  end
  name = "三体"
  price = 299
  author = "大刘"
  return name,price ,author
end
puts book

def game
  for i in 33..66
    if i > 35 then
      break
    end
    puts  "#{i}hihi"
  end
  for j in 56..66
   if j > 66
     next
   end
   puts "#{j}<=66"
  end
  name = "摩尔庄园"
  type = "休闲养成"
  return name,type
end
puts game

def hobby
  for i in 22..44
    if i >33
      break
    end
    puts "#{i}hhhh"
  end
  for j in 33..66
    if j >44
      next
    end
    puts "#{j}小于等于44"
  end
  name = "baseball"
  type = "sports"
  return name,type
end
puts hobby

def songs
  for i in 33..44
    if i > 36
      break
    end
    puts "#{i}是数字"
  end
  for j in 33..55
    if j >44
      break
    end
    puts  "#{j}>44"
  end
  name = "sunshine"
  type = "Japaness"
  return name,type
end
puts songs
def color
  for i in 44..55
    if i > 45
      break
    end
    puts "#{i}hhhahah"
  end
  for j in 33..55
    if j >44
      next
    end
    puts "变量是#{j}"
  end
  red = "red"
  blue = "blue"
  return red,blue
end
puts color


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







