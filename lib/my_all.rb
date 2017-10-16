require 'pry'

def my_all?(collection)
  if block_given?
    i = 0
    return_vals = []
    while i <collection.length
      return_vals << yield(collection[i])
      i = i+1
    end
  else
    puts "Blocks not given"
  end

  if return_vals.include?(false)
    return false
  else
    return true
  end
end
