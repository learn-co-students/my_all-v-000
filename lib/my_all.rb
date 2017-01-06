require 'pry'

def my_all?(collection)
  i=0
  return_collection = []
  while i < collection.length
    return_collection << yield(collection[i])
    i += 1
  end

  if return_collection.include?(false)
    false
  else
    true
  end
end
