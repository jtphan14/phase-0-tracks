
# Method to create a list
def grocery_list (items)
# input: string of items separated by spaces (example: "carrots apples cereal pizza") 
# steps: 
  # create hash
  grocery_items={}
  array = items.split(" ")
  counter = 0
  
until counter == array.length
  # set default quantity to 1
  # add items to the hash
  product = array[counter]
  grocery_items[product] = 1
  counter +=1
end
  # output: hash of items
 p list = grocery_items
end

# Method to add an item to a list
def add_item(add_items, quantity, grocery_items)
# input: item name and optional quantity
# steps: 
# add item to hash
# update the hash with additional items
# output: hash of items
  
    if  grocery_items.has_key?(add_items) == true
        grocery_items[add_items] += quantity
    else
        grocery_items[add_items] = quantity
    end
  p grocery_items
end

# Method to remove an item from the list
def remove_item (remove_items, grocery_items)
# input: the item that needs to be removed and the quantity
# steps:
# remove item from hash
# update the hash with removed items
	grocery_items.delete(remove_items)
# output: hash of items
	p grocery_items
end


# Method to update the quantity of an item
def update_quantity (updated_item, quantity, grocery_items)
# input: the item that needs updating and the quantity
# steps:
 # check to see if the item is available to be updated
 if grocery_items.has_key?(updated_item) == true
 	grocery_items[updated_item] = quantity
 end
 p grocery_items
end
 # update the new quantity of item
 # update the hash with new quantity
# output: hash of items


# Method to print a list and make it look pretty
def pretty_list(grocery_items)
# input: hash of items
# steps:
p "Grocery List:"
grocery_items.each {|item, quantity| p "#{item}: #{quantity}" }
 # create title "Grocery list"
 # print out items inside the hash
# output: list of grocery items
end
current_list = grocery_list("")
add_item("lemonade", 2,current_list)
add_item("tomatoes",3,current_list)
add_item("onions",1,current_list)
add_item("ice_cream", 4, current_list)
remove_item("lemonade", current_list)
update_quantity("ice_cream", 1, current_list)
pretty_list(current_list)

