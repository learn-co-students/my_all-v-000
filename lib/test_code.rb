i = 0
my_collection = []
while i < array.length
  my_collection << yield(collection[i])
  i += 1
end
#binding.pry
my_collection
