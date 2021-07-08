require 'pry'

def my_all?(collection)
  i = 0
  new_array = []
  while i < collection.length
    new_array << yield(collection[i]) #that matches condition
    i += 1
  end

  if new_array.include? false
    return false
  else
    return true
  end
end
