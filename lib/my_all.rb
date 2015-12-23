require 'pry'

def my_all?(collection)
	new_collection = []
	collection.each {|item| new_collection << yield(item)}
	!new_collection.include?(false)
end
