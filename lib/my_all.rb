require 'pry'

def my_all?(collection)
  bool = true
  i = 0
  while i < collection.length
    bool = false if yield(collection[i]) == false
    i+=1
  end
  bool
end
