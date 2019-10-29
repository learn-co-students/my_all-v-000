require 'pry'

def my_all?(collection)
  i = 0
  return_block = []
  while i < collection.length
    return_block << yield(collection[i])
    i += 1
  end

  if return_block.include?(false)
    false
  else
    true
  end
end
