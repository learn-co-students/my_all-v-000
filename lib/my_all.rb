require 'pry'

def my_all?(collection)
  return_value = []
  i = 0
  while i < collection.length
    return_value << yield(collection[i])
    i += 1
  end
  return_value.include?(false) ? false : true
end
