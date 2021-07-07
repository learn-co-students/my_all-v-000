require 'pry'

def my_all?(collection)
  bool_arr = []
  item = 0
  while item < collection.length
    bool_arr << yield(collection[item])
    item += 1
end

if bool_arr.include? false
  return false
else
  true
end
end
