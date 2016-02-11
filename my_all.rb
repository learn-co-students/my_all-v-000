def my_all?(collection)
  if collection
  i=0
  all = []
  while i < collection.length
    all << yield(collection[i])
    i = i + 1
  end
  end