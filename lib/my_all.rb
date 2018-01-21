require 'pry'

def my_all?(collection)
  values = []
  i = 0
  while i < collection.size
    values << yield(collection[i])
    i += 1
  end

  if values.include?(false)
    false
  else
    true
  end
end
