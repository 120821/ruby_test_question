#对于参数n，获取n的所有除数
def get_all_chu_shu n
  result = []
  #对1..n的所有数进行遍历
  for i in 1..n
    #每一个数都n/i,看余数
    #如果余数为0，表示i可以被n整除
    if n % i == 0
      #就把i放到结果中
      result.push i
    end
  end
  #循环结束，返回结果
  return result
end

def get_chu_shu max
  result = {}
  #对1..n的所有数都进行遍历
  for i in 1..max
    #把i放到结果中
    result[i] = get_all_chu_shu(i)
  end
  #循环结束，返回结果
  return result
end

puts get_chu_shu 10
