require 'pry'

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    block_return_values << yield(collection[i]) #the block passed to this yield is given during the method call with {} or do/end
    i += 1
  end

  if block_return_values.include?(false)
    false #return false if the array block_return_values has ANY values that list false
  else
    true #if all values in array block_return_values that were passed to the yield are true, then return true
  end
end

#this lab shows you how to build an ALL method without using ALL.
#you can use an example call method such as this to go through your Code
#example: my_all?([1,2,3]) {|i| i<2}
#so block_return_values will look like [true, false, false], therefore, the my_all? method after going through the if/include method will return false
