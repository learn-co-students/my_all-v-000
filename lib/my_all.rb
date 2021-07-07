require 'pry'

def my_all?(collection)
  i = 0
  block_results = []
  while i < collection.length
    block_results << yield(collection[i])
    i += 1
  end
  
  if block_results.include?(false)
    false
  else
    true
  end
end
