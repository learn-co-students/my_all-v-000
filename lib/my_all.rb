require 'pry'



def my_all?(array)
  i = 0
  collect = []
  while i < array.length
    collect << yield(array[i])
    i += 1
  end

if collect.include?(false)
  false
else
  true
end
end
