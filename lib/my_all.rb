require 'pry'

def my_all?(collection)
  if block_given?
    i = 0
    block_return_values = []
    while i < collection.length
      block_return_values << yield(collection[i])
      i += 1
    end

    if block_return_values.include?(false)
      return false
    else
      true
    end
  else
    puts "Sorry, no block given."
  end
end
