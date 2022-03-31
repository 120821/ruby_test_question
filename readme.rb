=begin
这是一些关于ruby基本算法的文件
1.入门算法： 输出一个 宽度为m , 高度为n 的图形。
  需要实现这个函数： pretty_print(width, height, char),
  该函数具备的功能是：
  pretty_print(5, 2, 'a')
  会打印下面的形状： （每行5个a, 合计2行）
  aaaaa
  aaaaa
  pretty_print(3, 4, 'b')     #  每行3个b, 合计4行
  bbb
  bbb
  bbb
  bbb
  对应文件：q1_print_m_x_n.rb  q1_print.rb  q1_print2.rb
2.入门计算，计算n以内的质数的交替计算绝对值的和与差
  such as   special_sum(10)  => 1,2,3,5,7 的和
  首先，数字是1，2,3，5，7
  然后我们做变换，1，2,-3，5，-7  （正，负，正，负，正 ...)
  然后加和，1-2+3-5+7=4
  4 ,就是我们需要的答案
  对应文件：q2_special_sum.rb q2_sum_special_loop.rb  q2_special_sum_3.rb q2_special_sum_2.rb
3.入门算法: 计算n 之内的质数的和
  such as sum_prime(10)  # =>  1,2,3,5,7 的和
  sum_prime(20)  # =>  1,2,3,5,7,11,13,17,19 的和
  对应文件：q3_sum_prime.rb q3_test_prime_sum.rb
4算法： 输出小于n 的所有的质数
  质数： 只能被1 或者 自身整除。
  需要实现这样的函数：
  print_prime(n)      n 为最大值。 打印 0 ~ n 之间的所有质数。
  例如：
  print_prime(10) # => 1,2,3,5,7  （多行输出就行，不用非得同行输出用逗号连接）
  print_prime(20) # => 1,2,3,5,7,11,13,17,19
  对应文件：q4_prime.rb
5.入门算法: 获得小于N的所有奇数
  需要实现这样的函数：
  print_odd_number(n)   #  n为最大值
  例如：
  print_odd_number(10) # => 1,3,5,7,9
  对应文件：q5_odd_number.rb
6.入门算法：打印一个hash, key 为数字，value为可以被整除的被除数
  例如：
  prime_numbers(5)  ,
  结果
  {
    1: [1],
    2: [1,2],
    3: [1,3],
    4: [1,2,4],
    5: [1,5]
  }
  对应文件：q6_prime_with_comment.rb
7.入门算法: 对数组去重, 并且计算出现的次数
  需要实现这样的函数：
  对指定的数组进行分析，打印出某个元素出现的次数。 (提示：使用hash)
  print_occur_times(my_array)
  例如：
  my_array = [1,2,3,3,3,4,4,5,5,5,5,5,5,8,9,9]
  print_occur_times(my_array)
  结果：
  1: 1   # 1出现1次
  2: 1   # 2出现1次
  3: 3   # 3出现3次
  4: 2   $ 4出现2次。
  5: 6
  8: 1
  9: 2
  对应文件：q7_find_element_occur_times.rb
8.程序： 计算 1 , 2, 3, ... 100 的和
  提示： 会用到 ： 数组， 循环
  第一个方法： 循环相加。 （不用递归函数）
  第二个方法 使用递归函数
      使用loop .. do 实现
      使用 for 循环实现
      使用 while 实现
  要求
  sum(1, 3000) # => 4501500
  对应文件：/q8_sum_while_for_loop/test_sum.rb while_sum.rb for_sum.rb loop_sum.rb
9.入门算法：动态创建一个二维hash
  实现这样的方法： 可以动态创建一个二维Hash, 内容如下
  generate_hash(3)
  获得：
  {
    "parent1": {
        "child1": "value1"
    },
    "parent2": {
        "child2": "value2"
    },
    "parent3": {
        "child3": "value3"
    }
  }
  对应文件：q9_hash.rb
10.入门算法：动态创建一个二维Array
  实现这样的方法： 可以动态创建一个二维Array, 内容如下
  generate_array(4)
  获得：
  [
    [1],
    [2,2],
    [3,3,3],
    [4,4,4,4]
  ]
  再如：
  generate_array(5)
  获得：
  [
    [1],
    [2,2],
    [3,3,3],
    [4,4,4,4],
    [5,5,5,5,5]
  ]
  对应文件：q10_two_dimensional_hash.rb
11.入门算法：动态创建一个一维Hash
  实现这样的方法： 可以动态创建一个hash, 内容如下
  generate_hash(3)
  获得：
  {
    "key1" => "string 1",
    "key2" => "string 2",
    "key3" => "string 3",
  }
  对应文件：q11_generate_hash.rb
12.入门算法：动态创建一个数组
  实现这样的方法： 用户输入 n, 可以动态的实现一个长度为n 的数组，每个元素的内容为 (当前元素的index + 1) x 3,
  例如：
  generate_array(3)  # =>  [3,6,9]    ，这个数组的3 = （0 + 1 ) x 3， 6 = (1 + 1 ）x 3 ...
  generate_array(5)  # =>  [3,6,9,12,15]
  对应文件：q12_generate_array.rb
13.  学习ruby中的hash
  show_my_hash()     # 显示一个 hash，包含的内容为：  {  "key1" => "one", "luleluelue" => ">_<" }
  show_my_hash("lueluelue")  # 加上参数，并且该参数为 对应的key的时候， 那么会返回 对应的value
  实现多维的hash
  my_multiple_hash()
  返回：
  {
     "key1" =>  "one",
     "key2" => {
        {
           "child_key1" => "child value1",
           "child_key2" => "child value2"
        }
     }
  }
  对应文件：q13_my_hash_child_key.rb
14.题目1 使用ruby的数组实现下面的方法调用：
  show_my_array()   # => 参数是空的话，返回整个数组：  [1,2,3, "aa", "bb", 877]
  show_my_array(3)  # => 参数不是空的话，返回该数组的第N个元素 "aa"
  show_my_array(5)  # => 877
  题目2 （提示： 使用ruby的数组方法： sort() ，然后取得第一个或者最后一个的值）
  my_array = [3,5,6,6,6,7,9,8,1,8,9,9]
  get_min(my_array)   # => 获得最小的元素  1
  my_array = [31,8,9,2, 9]
  get_min(my_array)   # => 获得最小的元素  2
  get_max(my_array)   # => 获得最大的元素  31
  对应文件：/hash/q14_my_array_not_nil_n.rb q14_my_array_max_min.rb
=end
