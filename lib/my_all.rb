require 'pry'

def my_all?(collection)
  binding.pry
  i = 0
  return_block_values = []
  while i < collection.length
    return_block_values << yield(collection[i])
    i += 1
  end

  if return_block_values.include?(false)
    false
  else
    true
  end
end
