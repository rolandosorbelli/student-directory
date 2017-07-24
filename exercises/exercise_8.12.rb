# What happens if the user doesn't enter any students? It will try to print an
# empty list. How can you use an if statement (Control Flow) to only print the
# list if there is at least one student in there?

def input_students
	puts "Please enter the names of the students."
	puts "To finish, just hit the return button twice."
	students = []
	name = gets.chomp
	while !name.empty? do
		students << {name: name, cohort: :November}
		puts "#{name} has been added! Now we have #{students.count} students."
		name = gets.chomp
	end
	students
end 


def header
	puts "The students of Villains Academy"
	puts "~~~~~~~~~~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~"	
end # <--- Header. ~

def student_list(students)
	if students.count <= 0
		puts "No students in this cohort."
	else
		students.each do
			|student|
			puts "- #{student[:name]}, #{student[:cohort]} cohort."
		end
	end
end # <--- Iteration of the array. ~

def footer(names)
	puts "~~~~~~~~~~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~"
	puts "Overall, we have #{names.count} great students."
end # <--- Interpolation to count the students || footer. ~


students = input_students
header # <--- Calling header method. ~
student_list(students) # <--- Calling student_list method. ~
footer(students) # <--- Calling footer method. ~