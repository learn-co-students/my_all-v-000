require 'pry'

def my_all?(collection)

  idx = 0
  while idx < collection.length
    if !yield(collection[idx])
      return false
    end
    idx += 1
  end

  true
end
