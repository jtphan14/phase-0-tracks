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
db.execute("INSERT INTO categories (name) VALUES ('Cosmetics')")
db.execute("INSERT INTO categories (name) VALUES ('Electronics')")
db.execute("INSERT INTO categories (name) VALUES ('Toiletries')")
db.execute("INSERT INTO categories (name) VALUES ('Misc')")

