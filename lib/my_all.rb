require 'pry'

def my_all?(collection)
  index = 0
  res = []
  while index < collection.length
    res << yield(collection[index])
    index +=1
  end

  if res.include?(false)
    false
  else
    true
  end
end
