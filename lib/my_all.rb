require 'pry'

def my_all?(collection)
  i = 0
  block_return = [] 
  while i < collection.length
  	block_return << yield(collection[i])
  	i += 1
  end

  block_return.include?(false) ? false : true
  
end
