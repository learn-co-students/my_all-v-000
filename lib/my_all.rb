require 'pry'

def my_all?(collection)
  i = 0 
  block_return_values = []
  while i < collection.length 
    block_return_values << yield(collection[i])
    #binding.pry
    i += 1
  end

  if block_return_values.include?(false)
    false
  else
    true 
  end
end

#puts my_all?([4,5,3]){|i| i>2 }