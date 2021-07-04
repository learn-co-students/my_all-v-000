require 'pry'

def my_all?(collection)
  i = 0
  result = []
  while i < collection.length
    result.push(yield(collection[i]))
    i += 1
  end
  result.include?(false) ? false : true
end
