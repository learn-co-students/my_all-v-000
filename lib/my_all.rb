require 'pry'

def my_all?(collection)
  if block_given?  
    i = 0 
    block_return_values = []
      while i < collection.length
        block_return_values << yield(collection[i])
      i += 1 
    end 
  end


  if block_return_values.include?(false)
    false
  else
    true 
  end
end
