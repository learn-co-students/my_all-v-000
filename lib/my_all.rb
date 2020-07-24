require 'pry'

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    block_return_values << yield(collection[i])
    i = i + 1   #i += 1 does the same thing.
  end
  if block_return_values.include?(false)
    false
  else
    true
  end
end

my_all?([1,2,3]) {|i| i < 2}


# must save the return value of the yield block so it doesnt
# come out to be nil. need array to store the values.
# hence the need for block_return_values array. shovel in 
# the yield block results so now all that's left is to
# check the array for false elements as per spec.
# block_return_values = [ true, false, false]
# the include? method is to check if the block_return_values
# array has an element = false. to solve spec

# can i have two yield blocks in a single method?
