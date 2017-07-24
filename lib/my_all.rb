require 'pry'

# def my_all?(collection)
#   i = 0
#   block_return_values = []
#   while i < collection.length
#     block_return_values << yield(collection[i])
#     i += 1
#   end
#
#   if block_return_values.include?(false)
#     false
#   else
#     true
#   end
# end

# created a simpler solution that doesn't use #include? method
def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    if yield(collection[i]) == false
      return false
    end
    i += 1
  end
  true
end
