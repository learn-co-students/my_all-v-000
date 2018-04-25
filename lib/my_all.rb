require 'pry'
#We need to iterate through each element in the passed in collection using the simple lower level iterator while.
#Remember, since this is a lower level iterator, we will need to explicitly add a counter we'll call i,
#and increment it each time we go into the loop (i = i + 1)

def my_all?(collection)
  i = 0
  block_return_values = []
  #the array will store multiple data values
  while i < collection.length
    block_return_values << yield(collection[i])
    #When this code is run and it hits the yield line,
    #it is going to send whatever is passed in as the argument to the block.

    #shovel the return value of the block into the array
    i = i + 1
  end

  #Now have access to an array of return values block_return_values.
  #We have to determine whether the array contains any false elements.
  if block_return_values.include?(false)
    false
  else
    true
  end
end
