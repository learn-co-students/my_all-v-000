require 'pry'

def my_all?(collection)
  i = 0
  return_val = []
  while i < collection.size
    return_val[i] =  yield collection[i]
    i += 1
  end

  if return_val.include?(false)
    false
  else
    true
  end
end
