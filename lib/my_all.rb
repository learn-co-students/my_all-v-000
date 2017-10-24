require 'pry'

def my_all?(collection)
  i = 0
  returnArr = []
  while i < collection.size
    returnArr << yield(collection[i])
    i += 1
  end
  if returnArr.include?(false)
    return false
  else
    return true
  end
end
