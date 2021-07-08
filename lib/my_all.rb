require 'pry'

def my_all?(collection)
  i=0
  results=[]
  while i<collection.size
    results<<yield(collection[i])
    i+=1
  end
  #if the results include false, then all of the results don't pass, so we want to flip
  #the boolean value and return NOT(results include false?)
  !results.include?(false)
end
