# Modify your program to only print the students whose name is shorter than 12
# characters.

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
end # <--- Interactive student list. ~


def header
	puts "The students of Villains Academy whose names are shorter than 12 characters."
	puts "~~~~~~~~~~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~"	
end # <--- Header. ~

def student_list(students)
	students.each_with_index do
		|student, index|
		indexplusone = index + 1
		puts "#{indexplusone} - #{student[:name]}, #{student[:cohort]} cohort." if "#{student[:name]}".length < 12
	end
end # <--- Iteration of the array || printing students whose names are shorter than 12 characters. ~

def footer(names)
	puts "~~~~~~~~~~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~"
	puts "Overall, we have #{names.count} great students."
end # <--- Interpolation to count the students || footer. ~


students = input_students
header # <--- Calling header method. ~
student_list(students) # <--- Calling student_list method. ~
footer(students) # <--- Calling footer method. ~