require 'pry'

def my_all?(collection)
  i = 0
  vals_from_yield = []
  while i < collection.length
    vals_from_yield << yield(collection[i])
    i = i + 1
  end
  vals_from_yield.all?
end