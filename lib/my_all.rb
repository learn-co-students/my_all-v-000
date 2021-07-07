require 'pry'

def my_all?(collection)
  i = 0
  nu_array = []
  while i < collection.length
      nu_array << yield(collection[i])
    i += 1
  end

  if nu_array.include? (false)
    false
  else
    true
  end 
end
