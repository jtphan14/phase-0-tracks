#6.4 Solo Challenge: Designing and Implementing a Class

#Create Class: Student
class Student

attr_accessor :name, :age
attr_reader :school

#Create initialize method and define attributes.
def initialize (name, age)
#Attribute #1: String: Name of Student
@name = name
#Attribute #2: Integer: Age of Student
@age = age
#Attribute #3: Boolean: Honors?
@school = "DBC Elementary"
end

#Method #1: Completes homework
def homework (hours)
	puts "#{@name} took #{hours} hours to complete homework!"
end

#Method #2: Attends this (school)
def attends
	puts "#{@name} is #{@age} and attends #{school}"
end

#Method #3: Eats lunch (meal)
def lunch (meal)
	puts "#{@name} had #{meal} for lunch"
end	

def add
	puts "#{@name} and #{@age} added"
end
#End Class
end

=begin
Driver Code:
Jim = Student.new("Jim", 14)
Jim.homework(4)
Jim.attends
Jim.lunch("lunchables")
=end

#Create User Interface

list_of_students =[]
#Create Loop to allow users to input instances
loop {
	puts "Type enter to submit a students info or type 'done' to exit"	
	input = gets.chomp
#Have Users Type "Done to End Loop"
	break if input == 'done'

	#Ask User for Name
	puts "What is the student's name?"
	#Store Name
	name = gets.chomp.to_s
	#Ask User for Age
	puts "What is the user's age?"
	#Store Age
	age = gets.chomp.to_i
	#Create new instance given user input
	name = Student.new(name,age)
	#Store input into array
	list_of_students << name
#End Loop
}
#Loop through array and print out attributes
list_of_students.each{|student|p student}


