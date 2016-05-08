require 'pry'

def my_all?(collection)
  i = 0
  capture = [ ]
  while i < collection.length
    capture << yield(collection[i])
    i += 1
  end

  if capture.include?(false)
    false
  else
    true
  end
end