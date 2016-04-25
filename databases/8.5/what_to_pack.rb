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

# db.execute("INSERT INTO categories (name) VALUES ('Clothes')")
# db.execute("INSERT INTO categories (name) VALUES ('Cosmetics')")
# db.execute("INSERT INTO categories (name) VALUES ('Electronics')")
# db.execute("INSERT INTO categories (name) VALUES ('Toiletries')")
# db.execute("INSERT INTO categories (name) VALUES ('Misc')")
# db.execute("INSERT INTO list (item, quantity, category_id, packed) 
# 			VALUES ('Cell Phone Chareger', 1, 3, 'False')")

#-----------------------------------------------------------------------

def add_item(db, item, quantity, category_id, packed)
	db.execute("INSERT INTO list (item, quantity, category_id, packed) VALUES (?, ?, ?, ?)", [item, quantity, category_id, packed])
end

def remove_item(db,item)
	db.execute("DELETE FROM list WHERE item = ?") [item]
end

def update_item(db,item)
	db.execute("UPDATE list SET item=? WHERE item = ?")[item]
end

def update_quantity(db,item,quantity)
	db.execute("UPDATE list SET quantity=? WHERE item =?")[quantity,item]
end

def add_category (db, category)
	db.execute("INSERT INTO categories (category_name) VALUES (?)") [category_name]
end

def update_category(db,item,category_id)
	db.execute("UPDATE list SET category_id=? WHERE item=?") [category_id,item]
end

def pack_item(db,item,packed)
	db.execute("UPDATE list SET packed=? WHERE item = ?")[packed,item]
end

def print_list(db)
	packing_list = db.execute("SELECT list.item, list.quantity, categories.name, list.packed FROM list JOIN categories ON list.category_id = categories.id")
	packing_list.each do |list|
		if list['packed'] = "true"
			puts "#{list['item']} Quantity:#{list['quantity']} Category: #{list['category']} Packed: No"
		else list['packed'] = "false"
			puts "#{list['item']} Quantity:#{list['quantity']} Category: #{list['category']} Packed: Yes"
		end
	end
end
#--------------------------------------------------------------------
puts "Hello! Lets get you ready for your trip by creating your packing list. We are going to start off by asking you a few questions."
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

puts "Is there anything else you'd like to add to the list? Yes or No"
	add = gets.chomp






#--------------------------------------------------------------------
#DRIVERCODE
 
# add_item(db,"pants",4,1,'false'
# packing_list = print_list(db)
# packing_list.each do |list|
# 	puts "#{list['item']} Quantity:#{list['quantity']} Category: #{list['category']} Packed: #{list['packed']}"
# end


