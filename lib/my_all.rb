require 'pry'
# does not use include? method
def sm_my_all?(collection)
  if block_given?
    i = 0
    block_return_values = []
    while i < collection.size
      if iteration = yield(collection[i])
        block_return_values << iteration
      end
      i += 1
    end
    block_return_values.size == collection.size ? true : false
  else
    "No block given"
  end
end


def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    block_return_values << yield(collection[i])
    i = i + 1
  end

  if block_return_values.include?(false)
    false
  else
    true
  end
end
