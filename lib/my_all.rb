def my_all?(collection)
  values = []
  i = 0
  while i < collection.length
    values << yield(collection[i])
    i += 1
  end

  values.all?{|val| val == true}
end
