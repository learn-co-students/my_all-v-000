require 'pry'

def my_all?(collection)
  i = 0 
  while i < collection.length
    item = yield(collection[i])
    i += 1
  end
  item
end