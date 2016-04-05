class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(i)
  	(i).times {puts "Woof"}
  end

  def roll_over
  	puts "Rolls Over"
  end

  def dog_years(i)
  	puts (i)*7 
  end

  def bang
  	puts "Bang! (Dog rolls on side)"
  end

  def initialize
  	puts "Initializing new puppy instance..."
  end

end

fido = Puppy.new
fido.fetch("ball")
fido.speak(3)
fido.roll_over
fido.dog_years(3)
fido.bang

spot = Puppy.new

class Puppy

 def fetch(toy)
   puts "I brought back the #{toy}!"
   toy
 end

def speak(i)
     (i).times {puts "Woof"}
 end

 def roll_over
     puts "Rolls Over"
 end

 def dog_years(i)
     puts (i)*7 
 end

 def bang
     puts "Bang! (Dog rolls on side)"
 end

 def initialize
     puts "Initializing new puppy instance..."
 end

end

fido = Puppy.new
fido.fetch("ball")
fido.speak(3)
fido.roll_over
fido.dog_years(3)
fido.bang

spot = Puppy.new

index = 0


class Cats

 def initialize
     puts "Initializing new cats instance..."
 end

 def speak(i)
     (i).times {puts "Meow"}
 end

 def sleep
     puts "Look at this cat sleep"
 end

end

cats_array=[]

number = 0

until number == 50 do 
    number += 1
    name = Cats.new
    p name
    cats_array << name
end

cats_array.each {|cat| cat.sleep}
cats_array.each {|cat| cat.speak(3)}

garfield = Cats.new
garfield.speak(2)
garfield.sleep
