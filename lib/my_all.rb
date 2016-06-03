require 'pry'

def my_all?(collection)
  i = 0
  ans = []
  while i < collection.length
    ans << yield(collection[i])
    i += 1
  end
  !ans.include?(false)
end

my_all?([1,2,4]) {|i| i < 2}