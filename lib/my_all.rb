require 'pry'

def my_all?(collection) 
  i = 0  
  block_return_values = []  #STEP 3: save the return value of the yield block.     
  while i < collection.length # Step 1: Iterate thru each element in the passed collection using 'While' ( lower level iterator)
 #STEP 3 : shovel the return value of the block into the array 
 block_return_values  << yield(collection[i]) #<-- #STEP 2: yield each element in the Collection 2 the Block
   i = i + 1 # adding counter called 'i' (apart of step 1)

 end 

#STEP 4: ADDING '#INCLUDE '  TO DETERMINE THE RETURN VALUE OF THE 
#my_all? method. 

if block_return_values.include?(false)
  false
else 
  true 
  end
end