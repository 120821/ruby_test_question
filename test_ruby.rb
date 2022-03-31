10.times{|i| puts "hello #{i}"}
puts ",,,10times  hello,,i  ,,,,,,,,,,,"
10.times{puts "hello"}
puts "00=------10times  hello no i"
(1..10).each { |i| puts i }
puts "............10,..............."
n = 0
while n < 10
  puts n
  n += 1
end

puts ".................while..n < 10..puts n   n += 1........"
10.times do |i|
  next unless i.even?

  puts "hello #{i}"
end
puts "..............hello #{}..........."
10.times do |i|
  next unless i.even?

  puts "hello #{i}"
end


