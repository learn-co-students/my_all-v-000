
def my_all?(collection)
  i = 0
  storage = []
  while i < collection.length
    storage << yield(collection[i])
    i += 1
  end
  if storage.include?(false)
    false
  else
    true
  end
end
