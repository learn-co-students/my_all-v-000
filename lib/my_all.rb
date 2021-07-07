require 'pry'

def my_all?(collection)
  c=0
  flag=true
  while (c<collection.length)

    if !(yield collection[c])
      flag=false
      return flag
    end
  c+=1
  end # put argument(s) here
  # code here
  flag
end
