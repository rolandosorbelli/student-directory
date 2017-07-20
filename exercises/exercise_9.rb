# Right now if we have only one student, the user will see a message "Now we
# have 1 students", whereas it should be "Now we have 1 student". How can you
# fix it so that it used singular form when appropriate and plural form
# otherwise?

def input_students
	puts "Please enter the names of the students."
	puts "To finish, just hit the return button twice."
	students = []
	name = gets.chomp
	while !name.empty? do
		students << {name: name, cohort: :November}
		if students.count == 1
			puts "#{name} has been added! Now we have #{students.count} student."
		else
			puts "#{name} has been added! Now we have #{students.count} students."
		end
		name = gets.chomp
	end
	students
end 


def header
	puts "The students of Villains Academy"
	puts "~~~~~~~~~~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~"	
end # <--- Header. ~

def student_list(students)
	students.each_with_index do
		|student|
		puts "- #{student[:name]}, #{student[:cohort]} cohort."
	end
end # <--- Iteration of the array. ~

def footer(names)
	puts "~~~~~~~~~~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~"
	if names.count == 1 
		puts "Overall, we have #{names.count} great student."
	else
		puts "Overall, we have #{names.count} great students."
	end
end # <--- Interpolation to count the students || footer. ~


students = input_students
header # <--- Calling header method. ~
student_list(students) # <--- Calling student_list method. ~
footer(students) # <--- Calling footer method. ~