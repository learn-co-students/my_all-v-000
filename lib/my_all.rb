require 'pry'

def my_all?(collection)
  counter = 0
  new_collection = []
  while collection.length > counter
    new_collection << yield(collection[counter])
    counter = counter + 1
  end
  if new_collection.include?(false)
    false
  else
    true
  end
  
end
