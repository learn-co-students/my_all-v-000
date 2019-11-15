require 'pry'

def my_all?(array)
  i = 0
  collection = []
    while i < array.length
      collection << yield(array[i])
      i += 1
    end
  collection
  if collection.include?(false) == true
    return false
  else 
    return true
  end
end
