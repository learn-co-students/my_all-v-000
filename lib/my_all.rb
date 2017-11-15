require 'pry'

def my_all?(collection)
  i = 0
  yieldreturn=[]
  while i< collection.length
    yieldreturn << yield(collection[i])
    i=i+1
  end
  yieldreturn

  if yieldreturn.include?(false)
    false
  else
    true
  end

end
