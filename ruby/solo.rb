#6.4 Solo Challenge: Designing and Implementing a Class

#Create Class: Student
class Student

attr_accessor :name
attr_reader :school

#Create initialize method and define attributes.
def initialize (name,age)
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
def attends (school)
	puts "#{@name} attends #{school}"
end

#Method #3: Eats lunch (meal)
def lunch (meal)
	puts "#{@name} had #{meal} for lunch"
end	
#End Class
end

Jim = Student.new(Jim, 10)