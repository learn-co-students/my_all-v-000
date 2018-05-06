require 'pry'

def my_all?(collection)
   i = 0
   returnVal = []
   while i < collection.length
     returnVal << yield(collection[i])
     i += 1
   end
   
   if returnVal.include?(false)
     false
   else
      true
   end
end