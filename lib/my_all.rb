require 'pry'

def my_all?(collection)
  i = 0
  my_collection = []
  while i < collection.length
    my_collection << yield(collection[i])
    i += 1
  end

  if my_collection.include?(false)
    false
  else
    true
  end
end
