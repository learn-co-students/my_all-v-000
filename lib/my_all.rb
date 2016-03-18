require 'pry'

def my_all?(collection)
  if block_given?
    i = 0
    block_return_values = []
    while i < collection.length
      block_return_values << yield(collection[i])
      i += 1
    end

    # Using #include?
#    if block_return_values.include?(false)
#      false
#    else
#      true
#    end

    # Alternate approach without using #include?
    i = 0
    while i < block_return_values.length
      if block_return_values[i] == false
        return false
      else
        i += 1
      end
    end
    return true

  else
    puts "no block given"
    return nil
  end
end
