require 'pry'

def my_all?(collection)
  counter = 0
  array = []
  while counter < collection.length
    array << yield(collection[counter])
    counter +=1
  end
  if array.include?(false)
    false
  else
    true
  end
end