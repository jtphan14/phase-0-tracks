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
	db.execute("SELECT list.item, list.quantity, categories.name, list.packed FROM list JOIN categories ON list.category_id = categories.id")
end
