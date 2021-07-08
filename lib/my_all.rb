require 'pry'

def my_all?(collection)
  i = 0
  return_collect = []
  while i < collection.length
    return_collect << yield(collection[i])
    i += 1
  end
  if return_collect.include?(false)
    false
  else
    true
  end
end
