

def my_all?(collection)
  block_return_values = []
  i = 0
  while i < collection.length
    block_return_values << yield(collection[i])
    i =i +1
  end
  block_return_values.include?(false) ?
  false : true

end


my_all?([1,2,3]) {|i| i < 2}
