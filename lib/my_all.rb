require 'pry'

def my_all?(array)
  count = 0
  array.each do |item|
    if !(yield(item))
      return false
    end
  end
  return true
end
