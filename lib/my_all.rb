require 'pry'

def my_all?(collection)
  i = 0
  new_arr = []
  while i < collection.size
    new_arr.push(yield collection[i])
    i += 1
  end
  if new_arr.include?(false)
    false
  else
    true
  end
end
