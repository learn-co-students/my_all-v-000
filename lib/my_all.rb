require 'pry'

def my_all?(collection)
  i=0
  return_value=true
  while i<collection.length
    return_value &= yield collection[i]
    i +=1
  end
  return_value
end
