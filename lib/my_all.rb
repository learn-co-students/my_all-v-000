require 'pry'

def my_all?(collection)
  i = 0
  return_values = []
  while i < collection.length
    return_values << yield(collection[i])
    i += 1
  end
  !return_values.include?(false)
end

# my_all?(col) do | string |
#   string.include? "a"
# end
