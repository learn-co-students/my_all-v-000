require 'pry'

def my_all?(collection)
  i = 0
  block_return_val = []
  while i < collection.length
    block_return_val << yield(collection[i])
    i += 1
  end
  if block_return_val.include?(false)
    return false
  else
    return true
  end
end
