require 'pry'

def my_all?(collection)
  i = 0
  collect = []
  while i < collection.size
    collect << yield(collection[i])
    i += 1
  end

  collect.include?(false) ? false : true
end