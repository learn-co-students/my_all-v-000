require 'pry'

def my_all?(col)
  i = 0
  cap = []
  while i < col.length
    cap << yield(col[i])
    i += 1
  end
  cap.include?(false)? false:true
end

# Yield Block
my_all?([0]) { |i| i < 2 }