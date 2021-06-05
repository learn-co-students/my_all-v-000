require 'pry'

def my_all?(collection)
  i = 0
  truthy_list = []
  while i < collection.length
    truthy_list << yield(collection[i])
    i += 1
  end

  if truthy_list.include?(false)
    false
  else
    true
  end
end
