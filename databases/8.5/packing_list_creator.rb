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
db = SQLite3::Database.new("packing_list.db")

#create table method to store items to pack
create_items_cmd = <<-SQL
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
	category_name VARCHAR(255)
	)
SQL
#create category of items


#create a packing list tables(if it's not there already)
db.execute(create_items_cmd)
db.execute(create_categories_cmd)

#Method to Add item to list
def add_item(db, item, quantity, category_id, packed)
	db.execute("INSERT INTO list (item, quantity, category_id, packed) VALUES (?, ?, ?, ?)", [item, quantity, category_id, packed])
end

#Method to Delete Item
def remove_item(db,item)
	db.execute("DELETE FROM list WHERE item = ?") [item]
end

def update_item(db,item)
	db.execute("UPDATE list SET item=? WHERE item = ?")[item]
end

def update_quantity(db,item,quantity)
	db.execute("UPDATE list SET quantity=? WHERE item =?")[quantity,item]
end

def update_category(db,item,category_id)
	db.execute("UPDATE list SET category_id=? WHERE item=?") [category_id,item]
end

#Method to Mark Item Packed
def pack_item(db,item,packed)
	db.execute("UPDATE list SET packed=? WHERE item = ?")[packed,item]
end


