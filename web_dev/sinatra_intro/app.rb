# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

#write a GET route that displays an address
# any address
get '/contact/:address' do
  "The address is #{params[:address]}"
end

#write a GET route that can take a person's name as a query parameter and not a route aparameter
get '/great_job' do
  name = params[:name]
  if name
    "Great Job, #{name}!"
  else
    "Hello, you!"
  end
end

#write a GET route that adds two numbers
get '/:num_1/add/:num_2' do
  sum = params[:num_1].to_i + params[:num_2].to_i
  "The sum of #{params[:num_1]} and #{params[:num_2]} is #{sum}."
end

#write a GET route that allows user to search by first_name
get '/student_search/:name' do
  name = []
  student = db.execute("SELECT * FROM students")
  student.each do |student|
    first_name = "#{student['name']}".split(' ')
    name << first_name[0]
  end
  if name.include?(params[:name])
    "yes"
    # Code to access that students info... Need to work on.
    #student = db.execute("SELECT * FROM students WHERE ")
    # "ID: #{student['id']}<br>"
    # "Name: #{student['name']}<br>"
    # "Age: #{student['age']}<br>"
    # "Campus: #{student['campus']}<br><br>"
  else
    "Sorry, there are no student's by that name"
  end
  end
