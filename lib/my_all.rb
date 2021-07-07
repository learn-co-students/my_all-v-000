require 'pry'

def my_all?(collection)
  counter = 0
  block_return_values = []
  while counter < collection.length
    block_return_values << yield(collection[counter])
    counter +=1
  end #while

  if block_return_values.include?(false)
    false
  else
    true
  end #if statement
end #method
