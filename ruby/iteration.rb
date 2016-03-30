def cities
	puts "these are cities in the US"
	yield("SD","Chi")
end

cities {["SD", "Chi", "NYC"].each {|city1| puts "this city is #{city1}"}}

age = [1, 2, 3]

puts "age this year:"

p age

age_next_year=age.map do |year|
	puts year
	year.next
end

puts "next year's age will be:"
p age_next_year



city_full = {'San Diego'=> 'SD', 'Chicago' => 'Chi', 'New York City' => 'NYC'}

city_full.each do |full, abr|
	puts "#{full} is abrevated as #{abr}"
end

array = [1, 2, 3, 4, 5, 6]
array.delete_if {|x| x.odd? }
p array

hash = {1=>'one', 2 =>'two', 3 => 'three', 4 => 'four', 5 => 'five' , 6 => 'six'}
hash.delete_if {|number, word| number.odd? }
p hash

array2 = [1, 2, 3, 4, 5, 6]
array2.keep_if {|x|x.odd? } 
p array2

hash2 = {1=>'one', 2 =>'two', 3 => 'three', 4 => 'four', 5 => 'five' , 6 => 'six'}
hash2.keep_if {|number, word| number.odd? }
p hash2

array3 = [1, 2, 3, 4, 5, 6]
array4 = array3.select{|number| number.odd? }
p array4

hash3 = {1=>'one', 2 =>'two', 3 => 'three', 4 => 'four', 5 => 'five' , 6 => 'six'}
hash3.select!{|number, word| number.odd?}
p hash3

array5 = [5, 4, 3, 4, 5, 6]
array6 = array5.drop_while{|x| x > 3}
p array6

hash4 = {1=>'one', 2 =>'two', 3 => 'three', 4 => 'four', 5 => 'five' , 6 => 'six'}
hash4.reject!{|number, word| number > 3}
p hash4


