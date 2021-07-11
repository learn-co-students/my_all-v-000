require 'pry'

def my_all?(collection)
  i = 0
  
  while i < collection.length
    rtn = yield(collection[i])
    
    if !rtn
      return false
    end
    
    i += 1
  end
 
  true
end