require 'pry'

def my_all?(collection)
  my_all = true
  i = 0
  while i < collection.length
    my_all = yield collection[i]
    break if my_all == false
    i += 1
  end
  my_all == true ? true : false
end