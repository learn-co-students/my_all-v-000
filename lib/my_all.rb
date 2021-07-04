def my_all?(collection)
  i = 0
  new_collection = []
  while i < collection.length
      new_collection << yield(collection[i])
      i += 1
  end
  new_collection.include?(false) ? false : true
end

my_all?([1,2,3]) {|i| i < 2}
