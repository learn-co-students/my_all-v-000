require 'pry'

def my_all?(collection)
  i = 0
  block_returns = []
  while i < collection.length
      block_returns << yield(collection[i])
  i += 1
  end

  if block_returns.include?(false)
    false
  else
    true
  end
end
