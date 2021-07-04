# require 'pry'

def my_all?(collection)
  i = 0
  block_values = []
  while i < collection.length
    block_values << yield(collection[i])
    i += 1
  end
  block_values.include?(false) ? false:true
end
