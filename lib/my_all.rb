require 'pry'

def my_all?(arr)
i = 0
block_return = []
  while i < arr.size
    block_return << yield(arr[i])
    i += 1
  end
  block_return.include?(false) ? false : true
end

my_all?([1,2,3]){|x| x < 4}
