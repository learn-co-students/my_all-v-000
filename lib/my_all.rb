#require 'pry'

def my_all?(collection)
  i = 0
  block_return_values = []
    while i < collection.length
      block_return_values << yield(collection[i])
      i = i + 1   #i += 1 does the same thing.
      #Use this if it's easier for you.
    end
    if block_return_values.include?(false)
    false
  else
    true
  end
end



#def my_collect(array)
  #i = 0
#  collect = []
#  while i < array.length
#    collect << yield(array[i])
#    i += 1
#  end
#  collect
#end
