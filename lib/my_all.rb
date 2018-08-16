require 'pry'

def my_all?(collection)
  i = 0
  returns = []
  while i < collection.length 
  returns << yield(collection[i])
    i += 1
  end 
  
  if returns.include?(false)
    false
  else
    true 
  end
end