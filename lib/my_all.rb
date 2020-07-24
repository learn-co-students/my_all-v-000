require 'pry'

def my_all?(collection)
  i=0
  length= collection.length
  block_return_values = []
  while length != 0
   block_return_values << yield(collection[i])
    i+=1
    length -=1
  end
  if block_return_values.include?(false)
    false
  else
    true
  end

end