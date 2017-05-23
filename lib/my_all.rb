require 'pry'

def my_all?(collection)
  i = 0
  is_even = true
  while i < collection.length
    if !yield(collection[i])
      is_even = false
    end
    i += 1
  end
  is_even
end

my_all?([2,1,3]) do |i|
  i.even?
end
