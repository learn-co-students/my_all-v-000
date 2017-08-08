require 'pry'

# Creating an #all? method without using #all? #

def my_all?(collection)
  i = 0
  return_values = []
  while i < collection.length
    return_values << yield(collection[i])
    i += 1
  end #code will return an array of true and false if we stopped here.
  if return_values.include?(false) #since #all? returns false if any iteration is false, we need to add
     #include? to get a true or false return.
    false
  else
    true
  end
end
