require 'pry'

def my_all?(collection)
  counter = 0
  answer = true

  while counter < collection.length
    if yield(collection[counter]) == false
      answer = false
    end
    counter += 1
  end
  answer
end
