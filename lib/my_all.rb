require 'pry'

def my_all?(collection)
  i = 0
  new_array = []
  while i < collection.length
      new_array<< yield(collection[i])
      i = i + 1
  end

  if new_array.include?(false)
      false
  else
      true
  end

end
