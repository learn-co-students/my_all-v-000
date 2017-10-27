require 'pry'

def my_all?(collection)
  i = 0
  block_return_values = Array.new
  while i < collection.length
    if yield(collection[i]) == false #this if block ends the call to all after the first time a false value is returned,
      return false                   #instead of checking every value in the array unnecessarily
    else
      i += 1
    end
  end
  return true

#  Original "if" block:   
#  if block_return_values.include?(false)
#    return false
#  else
#    return true
#  end
end
