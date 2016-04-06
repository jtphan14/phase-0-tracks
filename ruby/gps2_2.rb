
# Method to create a list
def grocery_list (items)
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
  
# steps: 
  # create hash
  grocery_items={}
  array = items.split(" ")
  counter = 0
  p array
until counter == array.length
  # set default quantity to 1
  # add items to the hash
  product = array[counter]
  grocery_items[product] = 1
  counter +=1
end
  # print the list to the console [can you use one of your other methods here?
 p list = grocery_items
end

list = grocery_list("carrots apples oranges")
# output: hash of items

# Method to add an item to a list
def add_item(add_items, grocery_items)
# input: item name and optional quantity
  
    if  grocery_items.has_key?(add_items) == true
        grocery_items[add_items] += 1
    else
        grocery_items[add_items] = 1
    end

  
# steps: 
 # add item to hash
 # update the hash with additional items
# output: hash of items
  p grocery_items
end

p add_item("carrots", list)

# Method to remove an item from the list
# input: the item that needs to be removed and the quantity
# steps:
 # remove item from hash
 # update the hash with removed items
# output: hash of items

# Method to update the quantity of an item
# input: the item that needs updating and the quantity
# steps:
 # check to see if the item is available to be updated
 # update the new quantity of item
 # update the hash with new quantity
# output: hash of items

# Method to print a list and make it look pretty
# input: hash of items
# steps:
 # create title "Grocery list"
 # print out items inside the hash
# output: list of grocery items
