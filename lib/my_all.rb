require 'pry'

def my_all?(collection)
  return_vals = []
  i = 0
  while i < collection.size
    return_vals << yield(collection[i])
    i += 1
  end

  if return_vals.include?(false)
    return false
   else
     return true
  end
end