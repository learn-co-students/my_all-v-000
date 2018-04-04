def my_all?(collection)
  block_condition_met = []
  i = 0
  while i < collection.length
    block_condition_met << yield(collection[i])
    i += 1
  end
  block_condition_met.all?
end
