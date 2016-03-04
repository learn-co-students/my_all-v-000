require 'pry'

def my_all?(collection)
  i = 0
  results = []

  while i < collection.length
    results.push(yield collection[i])
    i += 1
  end

  results.include?(false) ? false : true
end