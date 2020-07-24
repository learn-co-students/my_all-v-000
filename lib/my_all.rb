require 'pry'

def my_all?(collection)
  i = 0
  while i < collection.length
    if !yield(collection[i])
      break
    else 
      i += 1
    end
  end
  if i == collection.length
    true
  else
    false
  end
end