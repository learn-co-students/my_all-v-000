require 'pry'

def my_all?(collection)
  i = 0
  list = []
  while i < collection.length
    list << yield(collection[i])
    #binding.pry
    i +=1
  end
  !list.include?(false)
end