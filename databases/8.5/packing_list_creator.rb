#Packing List
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

#create table method to store packing list
create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS list(
	id INTEGER PRIMARY KEY,
	item VARCHAR(255),
	quantity INT
	)
SQL

#create a packing list tables(if it's not there already)
db.execute(create_table_cmd)

#Method to Add item to list
def add_item(db, item, quantity)
	db.execute("INSERT INTO list (item, quantity") VALUES (?, ?)", [item, quantity])"
end