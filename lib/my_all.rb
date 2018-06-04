require 'pry'

def my_all?(collection)
  i = 0
  value = false
  while i < collection.length do
    value = yield collection[i]
    i += 1
  end
  value
end