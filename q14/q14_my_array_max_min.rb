def show_my_array(element_index dei= nil)
  my_array = [1,2,3,"aa","bb",877]

  if element_index == nil
    return my_array
  else
    return my_array[element_index]
  end
end

puts "=== show_my_array(),result:"
puts show_my_array(element_index)
