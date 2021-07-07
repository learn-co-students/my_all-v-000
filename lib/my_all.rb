require 'pry'
# note the lesson provide more details as to what to do.

def my_all?(collection)
  #our counter
    i = 0
     block_return_values = [ ]
    while i < collection.length
      block_return_values << yield(collection[i])
      # yield(collection[i]) go throughe each element in the index.
      i = i + 1
      #i += 1 does the same thing. Use this if it's easier for you.

    end

    if block_return_values.include?(false)
        false
    else
        true
    end
end
