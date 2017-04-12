require 'pry'

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    block_return_values << yield(collection[i])
    i +=1
  end
  #this last bit of code can use any of these three below
  #block_return_values.include?(false) ? false : true

  #!block_return_values.include?(false)

  if block_return_values.include?(false)
    false
  else
    true
  end

end
