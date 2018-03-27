require 'pry'

#.all? checks if there is a false or nil element in the array.
#.all? is each or collect, but with checking the array if there is false or nil.=

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    block_return_values << yield(collection[i]) #or .push, in this case shove is being used.
    i = i + 1 #i += does the same thing. Use this if it's easier for you.
  end

  if block_return_values.include?(false)
    false
  else
    true
  end
end

#In short, yield is making a conditional that iterates through the indexes and checks if i, or the index
#is less than 2. and if it returns false, you return false.

#yield in this case isn't useless, as you need yield in order to iterate through i with pipes(||).
