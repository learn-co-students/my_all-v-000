require 'pry'

#def my_all?(collection)
  #i = 0 
  #block_return_values = []
  #while i < collection.length 
    #block_return_values << yield(collection[i])
    #i = i + 1 
  #end
  #if block_return_values.include?(false)
    #false
  #else
    #true 
  #end
  
  #This is more elegant:
  #!block_return_values.include?(false)
  #Or this: block_return_values.include?(false) ? false : true
  #binding.pry
#end

#binding.pry

#Arguably, this is a more elegant solution.
def my_all?(collection)
  i = 0 
  
  while i < collection.size 
    if !yield(collection[i]) #If the block returns false even ONCE, #my_all is false.
      return false
    end
    i += 1
  end
  
  true #my_all is true since the block never evaluated to false
end