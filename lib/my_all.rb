require 'pry'

def my_all?(collection)
  block_return_values = []
  i = 0 #counter
  while i < collection.length #using a simple iterator to iterate through each element in the block
    block_return_values << yield(collection[i]) #yield each element in the collection in the block
    i += 1
  end

  if block_return_values.include?(false) #if one value in block_return_values is false my_all? is false
    false
  else
    true
  end
end
