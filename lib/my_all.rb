require 'pry'

def my_all?(collection)
  count = 0
  block_return_values = []
  while count < collection.length
    block_return_values << yield(collection[count])
    count += 1
  end
  block_return_values.include?(false) ? false : true
end
