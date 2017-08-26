require 'pry'

def my_all?(collection)
  i = 0
  yielded = []
  while i < collection.length
    yielded << yield(collection[i])
    i += 1
  end
  yielded.include?(false) ? false : true
end
