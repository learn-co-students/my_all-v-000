

def my_all?(collection)
  i = 0 
  block_return_array = []
  while i < collection.length 
    block_return_array << yield(collection[i]) 
    i+=1 
  end
  if block_return_array.include?(false) 
    false 
  else
    true 
  end
end