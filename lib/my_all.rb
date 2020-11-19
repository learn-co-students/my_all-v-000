require 'pry'

def my_all?(collection)
    i = 0
    while i < collection.length
        value = yield(collection[i])
        if !value
            return false
        end
        i += 1
    end
    return true
end