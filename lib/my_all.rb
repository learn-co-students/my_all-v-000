require 'pry'

def my_all?(collection)
    idx=0
    block_return_value = []
    while idx < collection.length
        block_return_value << yield(collection[idx])
        idx += 1
    end
    if block_return_value.include?(false)
      false
    else
      true
    end

end

#my_all?([3,4,9]) {|i| i < 2}
