#my_all?
  # does not call on all?
  # can handle an empty collection
  # yields the correct element to the block
  # returns false when the block condition is not met
  # returns true when the block condition is met

require 'pry'

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    block_return_values << yield( collection[i] )
    i += 1
  end

  if block_return_values.include?( false )
    false
  else
    true
  end
end
