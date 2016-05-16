require 'pry'

def my_all?(collection)
  i = 0 
  items = [] 
  while i < collection.length
    items << yield(collection[i])
    i += 1 
  end

  return false if items.include?(false)
  true
end