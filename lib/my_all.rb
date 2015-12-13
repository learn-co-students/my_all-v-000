require 'pry'

#my_all to see if each item in the array is less than 2
def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    block_return_values << yield(collection[i])
    i += 1
  end

  #inlcude? to determine the return value of the #my_all?
  if block_return_values.include?(false)
    false
  else
    true
  end
end


