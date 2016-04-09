class TodoList

attr_accessor :get_items
#Create Initialize Method	
	def initialize (get_items)
		@get_items = get_items
	end
#Create Add Item Method
	def add_item(x)
		@get_items.push(x)
	end
#Delete Add Item Method
	def delete_item(x)
		@get_items.delete(x)
	end

end

