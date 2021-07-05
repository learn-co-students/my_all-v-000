require 'pry'

def my_all?(collection)
      i = 0
      newarray = []
      while i < collection.length
            newarray << yield(collection[i])
            i = i + 1
      end
      newarray.any? { |e| e == false } ? false : true
end
