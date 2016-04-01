food_court = {
	mcdonalds:{
		meals:{
			number_one:{
				items_inc: ['Big Mac', 'French Fries', 'Drink'],
				price: 6,
			},
			number_two:{
				items_inc:['20 piece chicken nuggets', 'French Fries', 'Drink'],
				price: 5,
			}	
		},
		value_menu_prices:{
			#assuming $USD
			hamburger: 1,
			double_cheeseburger: 2,
			ice_cream: 1.05,
		}
	},
	
	panda_express:{
		meals:{
			Combo_1:{
				items_inc:['Fried Rice', 'Orange Chicken'],
				price: 6
			},
			Combination_2:{
				items_inc:['Fried Rice', 'Brocolli Beef'],
				price: 6
			}
		},
		a_la_carte_prices:{
			chow_mein: 3,
			drink: 2,
		}
	},
	
	hot_dog_on_a_stick:{
		menu_price:{
			corn_dog: 3,
			fries: 2,
			lemonade: 2
		},
		lemonade_flavors:['original', 'strawberry', 'kiwi']
	}
}	