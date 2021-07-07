require 'pry'

def my_all?(collection)
i = 0
return_array = []
  while i < collection.length
    return_array << yield(collection[i])
    i += 1
  end
  y = 0
  while y < return_array.length
    return false if return_array[y] == false
    y += 1
  end
  true
 # !return_array.include?(false) 
 # this works but I wanted 
 # to implement a version without the use of any high level enumerators
end