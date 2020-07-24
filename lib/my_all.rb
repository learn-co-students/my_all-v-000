require 'pry'

def my_all?(collection)
  i = 0
  list = []
  while i < collection.length
    list <<  yield(collection[i])
    i += 1
  end

  if list.include?(false)
    false
  else
    true
  end
end

