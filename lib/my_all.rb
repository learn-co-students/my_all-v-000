require 'pry'
collection = [1, 2, 3]

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    block_return_values << yield(collection[i])
    i += 1
    end
  if block_return_values.include?(false)
    false
  else
    true
  end
end

my_all?(collection) do |number|
  number < 2
end
