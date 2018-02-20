require 'pry'

def my_all?(collection)
  i = 0
  results = Array.new
  while i < collection.length
    results << yield(collection[i])
    i += 1
  end

  if results.include?(false)
    false
  else
    true
  end
end
