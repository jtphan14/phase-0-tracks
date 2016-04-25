#Packing List (Inspired by my recent trip to Canada)
#Create a ruby program that will help people create a list of items to pack for a vacation.
#Ask how many days their trip is
#Method to add items to the list with statement to let them if item is already on the list
#Method to remove items to list
#Method for suggested items

# require gems
require 'sqlite3'
require 'faker'

#create SQlite3 database
db = SQLite3::Database.new("PackingList.db")
db.results_as_hash = true

create_list_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS list(
	id INTEGER PRIMARY KEY,
	item VARCHAR(255),
	quantity INT,
	category_id INT,
	packed BOOLEAN,
	FOREIGN KEY (category_id) REFERENCES categories(id)
	)
SQL

create_categories_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS categories(
	id INTEGER PRIMARY KEY,
	name VARCHAR(255)
	)
SQL

db.execute(create_list_cmd)
db.execute(create_categories_cmd)

# db.execute("INSERT INTO list (item, quantity, category_id, packed) 
# 			VALUES ('Cell Phone Chareger', 1, 3, 'False')")
# db.execute("INSERT INTO list (item, quantity, category_id, packed) 
# 			VALUES ('shirt', 2, 3, 'False')")
#-----------------------------------------------------------------------

def add_item(db, item, quantity, category_id, packed)
	db.execute("INSERT INTO list (item, quantity, category_id, packed) VALUES (?, ?, ?, ?)", [item, quantity, category_id, packed])
end

def remove_item(db,item)
	packing_list = db.execute("DELETE FROM list WHERE item = ?",[item])
end

def print_quantity(db,item)
	packing_list = db.execute("SELECT * FROM list where item =?", [item])
	packing_list.each do |list|
		puts "#{list['item']} Quantity:#{list['quantity']} "
	end
end

def update_quantity(db,item,quantity)
	db.execute("UPDATE list SET quantity=? WHERE item =?",[quantity,item])
end

def pack_item(db,item,packed)
	db.execute("UPDATE list SET packed=? WHERE item = ?",[packed,item])
end

def print_list(db)
	packing_list = db.execute("SELECT list.item, list.quantity, categories.name, list.packed FROM list JOIN categories ON list.category_id = categories.id")
	packing_list.each do |list|
		if list['packed'] == 'true'
			puts "#{list['item']} Quantity:#{list['quantity']} Category: #{list['category']} Packed: Yes"
		else list['packed'] == 'false'
			puts "#{list['item']} Quantity:#{list['quantity']} Category: #{list['category']} Packed: No"
		end
	end
end
# # #--------------------------------------------------------------------
puts "Hello! Lets get you ready for your trip by creating your packing list. We are going to start off by asking you a few questions."
	db.execute("INSERT INTO categories (name) VALUES ('Clothes')")
	db.execute("INSERT INTO categories (name) VALUES ('Cosmetics')")
	db.execute("INSERT INTO categories (name) VALUES ('Electronics')")
	db.execute("INSERT INTO categories (name) VALUES ('Toiletries')")
	db.execute("INSERT INTO categories (name) VALUES ('Misc')")
puts "Let's get started. How many days will your vacation be?"
	days = gets.chomp.to_i
puts "Thank you! A #{days} day vacation sounds amazing!"
	add_item(db,"underwear",days,1,"false")
	add_item(db,"shirts",days,1,"false")
	add_item(db,"pants",days,1,"false")
	add_item(db,"toothbrush/toothpaste",1,4,"false")
	add_item(db,"cellphone charger",1,3,"false")
puts "What season will you be heading there? (Winter, Spring, Summer, Fall) "
	season = gets.chomp.downcase.to_s

	if season == "winter"
		add_item(db,"heavy jacket",1,1,"false")
		add_item(db,"gloves",1,1,"false")
		add_item(db,"boots",1,1,"false")
	elsif season == "spring"
		add_item(db,"allergy medicine",1,5,"false")
	elsif season == "summer"
		add_item(db,"swimsuit",1,1,"false")
		add_item(db,"flip flops",1,1,"false")
		add_item(db,"sunblock",1,5,"false")
	elsif season == "fall"
		add_item(db,"umbrella",1,1,"false")
	end

puts "We got your list started! Here's a list of your packing essentials"
	print_list(db)

puts "If there is anything else, you'd like to add to the list, please input now. You will have a chance to update quantities later on. Otherwise, type 'done'"
	item_to_add = gets.chomp.downcase

	until item_to_add == "done"
		add_item(db,item_to_add,1,1,"false")
		print_list(db)
		puts "What else would you like to add? Type 'done' when complete"
		item_to_add = gets.chomp.downcase
	end
print_list(db)


puts "If you would like to update the quantity, please enter in the item you would like to change. Type 'done' to skip"
	item_q_to_update = gets.chomp.downcase
until item_q_to_update == "done"
	print_quantity(db,item_q_to_update)
		puts "What would you like to update the quantity to?"
		updated_quantity = gets.chomp.to_i
		update_quantity(db,item_q_to_update,updated_quantity)
	puts "Thank you! Your item has been updated"
	print_list(db)
	puts "What else would you like to update? Type 'done' when complete"
	item_q_to_update=gets.chomp.downcase
end

puts "Awesome! Let's get packing!"
puts "Here is your packing list:"
print_list(db)
puts "Type in item name once packed! Type 'done' when finished"
	packed_item=gets.chomp.downcase
	until packed_item == 'done'
		pack_item(db,item,'true')
		print_list(db)
		puts "Type in the packed item. Type 'done' when finished"
		packed_item == gets.chomp.downcase
	end
puts "Awesome! You're all packed! Enjoy your trip!"


#--------------------------------------------------------------------
#DRIVERCODE
 
# add_item(db,"pants",4,1,'false')
# packing_list = print_list(db)
# packing_list.each do |list|
# 	puts "#{list['item']} Quantity:#{list['quantity']} Category: #{list['category']} Packed: #{list['packed']}"
# # end
# remove_item(db, "swimsuit")
# print_list(db)
# print_quantity(db,"pants")

#------------------------------------------------------------------
# Additional Items to Work on in the Future:
# -Check if item is already in the list
# -Account for user error
# -Complete list once all packed
# -Make printed list easier to read

