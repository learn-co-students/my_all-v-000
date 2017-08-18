def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    #value added to block_return_values array
    #its added to this array because it can store multiple answers
    block_return_values << yield(collection[i])
    i = i + 1
  end
  
  if block_return_values.include?(false)
   false
 else
   true
 end

end
