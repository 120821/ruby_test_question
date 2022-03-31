#def generate_array(n)
#  n_index = 1

#  #初始值为1，倍数为3
#  loop do
#    i = n_index *3
#    #如果大于n个数，就停止打印
#    if n_index > n
#      break
#      #不然会一直打印连续n个3的倍数
#    else
#      print i
#      foo = i
#      foo = Array(foo).push()
#      n_index = n_index +1
#    end
#  end
#end
##假设n的数值
#generate_array(8)

def generate_array(n)

  result = []
  i = 1
  loop do

    result.push(i * 3)
    i = i+1
    if i > n
      break
    end

  end

  return result
end

puts generate_array(9)
