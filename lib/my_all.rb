require 'pry'

def my_all?(collection)
i = 0 
return_values = []
while i < collection.length 
  return_values << yield(collection[i])
  i += 1 
end 
if return_values.include?(false)
  false 
else 
  true 
end 
end

my_all?([1,2,3]) do |x|
  x < 2 
end 
  