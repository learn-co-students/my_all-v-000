require 'pry'

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    # yield each element to block, evaluate, return value back to yield
    # shovel return value into array
    block_return_values << yield(collection[i])
    i += 1
  end

  # determine whether return values include false
  if block_return_values.include?(false)
    false
  else
    true
  end
end
