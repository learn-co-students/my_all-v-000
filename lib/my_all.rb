def my_all?(collection)
  i = 0
  ret_vals = []
  while i < collection.length
    ret_vals << yield(collection[i])
    i += 1
  end

  if ret_vals.include?(false)
    false
  else
    true
  end
end
