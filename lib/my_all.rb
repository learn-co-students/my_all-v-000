require 'pry'

def my_all?(collection)
  i=0
  output=true

  while i < collection.length
    if yield(collection[i]) == false
      output = false
    end
    i+=1
  end
  output
end
