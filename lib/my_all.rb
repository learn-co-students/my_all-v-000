require 'pry'

def my_all?(collection)

  i = 0
  array_collection = []
  while i < collection.length
    array_collection << yield(collection [i])
    i += 1
  end

  if array_collection.include? false
    false
  else
    true
  end
end
