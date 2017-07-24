# Once you have completed the "Asking for user input" section, open this file.
# It's Ruby code but it has some typos. Copy it to a local file and open it in
# Atom without syntax highlighting. To do this, select "Plain Text" in the
# lower right corner of the window. Now, find all typos in that file and
# correct them. Use your experience, online documentation, etc. to find all
# mistakes. Run the script in the terminal from time to time to make sure it
# works as it should. Google the errors Ruby will give you, think about what
# they could mean, try different things but don't look the answer up :)


def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :November}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end

def print_header
  puts "The students of my cohort at Makers Academy."
  puts "-------------"
end

def print_students(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  print "Overall, we have #{names.count} great students"
end


students = input_students
print_header
print_students(students)
print_footer(students)