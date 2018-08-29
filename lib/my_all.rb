require 'pry'

def my_all?(collection)
  block_return_values = Array.new
  i = 0
  while i < collection.size
    block_return_values.push(yield(collection[i]))
    i += 1
  end

  if block_return_values.include?(false)
    return false
  else
    return true
  end 
end


my_all?([1,2,3]) {|i| i < 2}
