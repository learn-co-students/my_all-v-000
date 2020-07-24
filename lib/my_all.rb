require 'pry'

def my_all?(collection)
	i = 0
	block_retun_value = []
	while i < collection.length 
		block_retun_value << yield(collection[i])
       i = i + 1
	end

	if block_retun_value.include?(false)
		false
	else
		true
	end
end

