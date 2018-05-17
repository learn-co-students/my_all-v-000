require 'pry'

def my_all?(collection)
  x = 0
  block_return_values = []
  while x < collection.count
   block_return_values << yield(collection[x])

    x += 1
  end
  if block_return_values.include?(false)
    false
  else
    true
  end
end