require 'pry'

def my_all?(collection)
  i = 0
  newcollection = []
  while i < collection.length
    newcollection << yield(collection[i])
    i+=1
  end

  if newcollection.include?(false)
    false
  else
    true
  end
end
