def cities
	puts "these are cities in the US"
	yield("SD","Chi")
end

cities {["SD", "Chi", "NYC"].each {|city1| puts "this city is #{city1}"}}





letters = ["a", "b", "c"]
new_letters=[]

puts "Orignal data:"
p letters
p new_letters

letters.each do |letter|
	new_letters<<letter.next
end


puts "after .each call:"
p letters
p new_letters


numbers = {1=> 'one', 2 => 'two', 3=> 'three'}

numbers.each do |digit, word|
	puts "#{digit} is spelled out as #{word}"
end


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
