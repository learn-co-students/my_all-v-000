require 'pry'

def my_all?(array)
  array.length.times do |i|
    truth = yield(array[i])
    return false if !truth
  end
  true
end
