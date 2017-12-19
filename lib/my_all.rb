require 'pry'

def my_all?(collection)#iteration part
  i = 0
  block_return_values = []
  while i < collection.length
    block_return_values << yield(collection[i])
    i += 1
  end
  #the block_return_values array at this point would look like
  #[true, false, false] depending on if the elements in the collection,
  #when compared to the comparative argument in the block.


  #now we code sturcture for a return value of true or false
  #because the all? method returns true or false.

  if block_return_values.include?
    (false)
      false
    else
      true
    end

end
