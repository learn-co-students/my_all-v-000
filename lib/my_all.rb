require 'pry'

def my_all?(collection)
  i = 0
  condition = true
  while i < collection.length
    if !yield(collection[i])
      condition = false
    end
    i += 1
  end
  condition

end
