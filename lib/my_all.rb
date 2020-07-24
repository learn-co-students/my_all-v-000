require 'pry'

def my_all?(collection)
  i = 0
  block_bools = []
  while i < collection.length
    block_bools << yield(collection[i])
    i += 1
  end
  if block_bools.include?(false)
    false
  else
    true
  end
end
