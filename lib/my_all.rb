require 'pry'

def my_all?(array)
  i = 0
  while i < array.length
    if !yield(array[i])
      break
    end
    i+=1
  end
  i==array.length
end
