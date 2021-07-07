require 'pry'

def my_all?(collection)
  boolean = []
  i = 0
  while i < collection.length
    boolean << yield(collection[i])
    i += 1
  end

  if boolean.include?(false)
    false
  else
    true
  end
end
