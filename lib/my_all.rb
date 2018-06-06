require 'pry'

# 1: iterate through each element using the simple lower level iterator while
def my_all?(collection)
  i = 0
  # 3.1: declare an array before entering the while loop
  block_return_values = []
  while i < collection.length
    # 2: yield each eleent in the collection to the block
    # 3.2: shovel the return value of the block into the array
    block_return_values << yield(collection[i])
    i += 1
  end
  # 4: determine the return value of the method
  if block_return_values.include?(false)
    false
  else
    true
  end
end
