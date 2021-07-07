require 'pry'

def my_all?(collection)
  i = 0
  block_returned_values = []
  while i < collection.length
    block_returned_values << yield(collection[i])
    i += 1
  end

  if block_returned_values.include?(false)
    false
  else
    true
  end
end
