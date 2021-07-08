require 'pry'

def my_all?(collection)
  new_collection = []
  for item in collection
    new_collection << yield(item)
  end
  new_collection.include?(false) ? false : true
end