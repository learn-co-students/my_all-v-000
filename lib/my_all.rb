require 'pry'

def my_all?(collection)
 i = 0
 block_return_values = []
 while i < collection.length
  block_return_values << yield(collection[i])
   i = i + 1
 end
end

if block_return_values
  false
else
  true
end
end
