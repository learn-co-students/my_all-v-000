require 'pry'
#For what it's worth: I had identical code with different variable names and the cold
#could not pass the test. Why!
def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    block_return_values << yield(collection[i])
    i = i + 1
  end

  if block_return_values.include?(false)
    false
  else
    true
  end
end