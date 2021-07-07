require 'pry'

# this method is to recreate the #all? method manually
def my_all?(collection)
  i = 0
  return_value = []
  while i < collection.length
    return_value << yield(collection[i])
    i += 1
  end

  # check to see if the return values from yielding contains a false
  if return_value.include?(false)
    false
  else
    true
  end

end


# my_all?([1,2,3]) {|1| 1 < 2}
