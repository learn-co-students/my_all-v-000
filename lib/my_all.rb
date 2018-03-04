require 'pry'

def my_all?(collection)
  i = 0
<<<<<<< HEAD
  while i < collection.length
    return false if yield(collection[i]) == false
=======
  result = []
  while i < collection.length
    binding.pry
    result << yield(collection[i])
    return false if result[i] == false
>>>>>>> 1194b2a563b09972ca4e9b545780f976860aad17
    i += 1
  end
  true
end
