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

end

fido = Puppy.new
fido.fetch("ball")
fido.speak(3)
fido.roll_over
fido.dog_years(3)
