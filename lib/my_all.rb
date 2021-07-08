def my_all?(list)
  # counter
  i = 0;
  new_list = []
  while i < list.size
    new_list.push( yield(list[i]) )
    i += 1
  end
  !new_list.include?(false)
end
