def my_all(collection)
  i=0
  all = []
  while i < collection.length
    all << yield(collection[i])
    i+=1
  end
  all

  if all.include? (false)
    return false
  else
    return true
  end
end