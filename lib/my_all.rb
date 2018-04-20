require 'pry'

def my_all?(collection)
  len = 0 
  new_collect = []
  while len < collection.size 
    new_collect << yield(collection[len])
    len += 1 
  end
  if new_collect.include?(FALSE)
    FALSE
  else
    TRUE
  end
end