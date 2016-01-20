require 'pry'

def my_all?(collection)
  i = 0
  asdf = []
  while i < collection.length
    asdf << yield(collection[i])
    i+=1
  end 

  if asdf.include?(false)
    false
  else
    true
  end
end

# my_all?([1,2,3]) {|item| item < 2 }