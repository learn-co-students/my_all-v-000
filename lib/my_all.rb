require 'pry'

def my_all?(collection)
  if collection.length == 0
    print "Empty collection!"
  else
    count = 0
    block_return_values = []
    while count < collection.length
      block_return_values << yield(collection[count])
      count += 1
    end
    if block_return_values.include?(false)
      return false
    else
      return true
    end
  end
end