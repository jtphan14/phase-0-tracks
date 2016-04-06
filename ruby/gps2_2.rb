
# Method to create a list
def grocery_list (items)
# input: string of items separated by spaces (example: "carrots apples cereal pizza") 
# steps: 
  # create hash
  grocery_items={}
  array = items.split(" ")
  counter = 0
  array.each{|item|grocery_items[item] =1}
  # output: hash of items
  p grocery_items
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
# input: the item that needs to be removed
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
# update the new quantity of item
# update the hash with new quantity
 if grocery_items.has_key?(updated_item) == true
 	grocery_items[updated_item] = quantity
 end
 # output: hash of items
 p grocery_items
end


# Method to print a list and make it look pretty
def pretty_list(grocery_items)
# input: hash of items
# steps:
# create title "Grocery list"
p "Grocery List:"
# print out items inside the hash
# output: list of grocery items
grocery_items.each {|item, quantity| p "#{item}: #{quantity}" }
end
#driver code

current_list = grocery_list("")
add_item("lemonade", 2,current_list)
add_item("tomatoes",3,current_list)
add_item("onions",1,current_list)
add_item("ice_cream", 4, current_list)
remove_item("lemonade", current_list)
update_quantity("ice_cream", 1, current_list)
pretty_list(current_list)

=begin
Reflection:
I learned that it pays to take the time to think about the pseudocode, so you can plan 
how you want to approach each challenge or code. I think when I'm pseudocoding, I also 
need to think about what methods I want to use, so that I can do a more thorough job 
pseudocoding.

Using a hash, you can have the quantity updated as there will be a key and a value.  With an 
array, you have less items that you will need to update

A method returns whatever you want it to return. It is called a return value, but it can return
a string, hash, array, etc.

You can pass variables, integers, strings, hash, arrays, and much more into methods.

To pass information between methods, you can run the method and assign it to a variable. 
From there, you can use the variable as an argument on the next method.

At first, I was extremely confused with this challenge. Although I understood the concepts
of arrays, hashes, and methods individually... connecting them together proved to be a challenge.
I really could not understand how to get the result from one method over to the next. However,
after working on it and seeing how it works, I have a much better understanding.
	
=end
