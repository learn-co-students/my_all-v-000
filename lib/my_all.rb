require 'pry'

  def my_all?(collection)
    i = 0
    new_array = []
    while i < collection.length
      new_array << yield(collection[i])
      i = i + 1   #i += 1 does the same thing. Use this if it's easier for you.
    end
    if new_array.include?(false)
      false
    else
      true
    end
  end
