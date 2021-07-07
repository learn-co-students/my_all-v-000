require 'pry'

def my_all?(collection)
block = []
i = 0
while i < collection.length
block << yield(collection[i])
i +=1
end

if block.include?(false)
  false
else
  true
end
end
