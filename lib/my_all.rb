require 'pry'

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    block_return_values << yield(collection[i])
    i = i + 1
  end
  # block_return_values.all?(true) - I thought this might work but it doesn't b/c it doesn't handle when an array is empty
  if block_return_values.include?(false)
    false
  else
    true
  end
end
