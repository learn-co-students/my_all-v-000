require 'pry'
def my_all?(collection)
  int = 0
  block_return_values = []
  while int < collection.size
    yield(collection[int])
    block_return_values << yield(collection[int])
    int += 1
  end

  if block_return_values.include?(false)
    false
  else
    true
  end
end
