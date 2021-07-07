require 'pry'

def my_all?(collection)
  i = 0
  number = []
  while i < collection.length
    number << yield(collection[i])
    i += 1
  end
  number.all?
end
