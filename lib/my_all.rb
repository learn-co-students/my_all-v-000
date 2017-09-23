require 'pry'

def my_all?(collection)
  new_collection = []
  i = 0
  while i < collection.length
    new_collection << yield(collection[i])
    i += 1
  end
  if new_collection.include?(false)
    false
  else
    true
  end
end
