class TodoList
#Create Initialize Method	
attr_accessor :get_items

	def initialize (get_items)
		@get_items = get_items
	end


end

p list = TodoList.new(["do the dishes", "mow the lawn"])
p list.get_items