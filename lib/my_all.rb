require 'pry'

def my_all?(collection)
  x = 0
  block_return_values = []
  while x < collection.length
    block_return_values.push(yield(collection[x]))
    x = x + 1
  end

  if block_return_values.include?(false)
    false
  else
    true
  end
end
