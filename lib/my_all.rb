def my_all?(collection)
  i = 0
  saved_values = []
  while i < collection.length
    saved_values << yield(collection[i])
    i += 1
  end

  saved_values.include?(false) ? false : true
end