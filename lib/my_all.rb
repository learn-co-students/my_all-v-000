require 'pry'

def my_all?(collection)
  i=0
  outs = []
  while i < collection.length
    outs << yield(collection[i])
    i+=1
  end

  if (outs.include?(false))
    return false
  else
    return true
  end
end
