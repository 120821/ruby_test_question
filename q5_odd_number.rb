#获取n以内的奇数
def print_odd_number(n)
  #使用for方法,对n以内的所有数进行遍历
  for i in 1..n
    #如果i%2大于零，就是奇数
    if i % 2 > 0
      print i
    end
  end
end

print_odd_number(20)
