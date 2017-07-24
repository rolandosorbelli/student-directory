# Our code only works with the student name and cohort. Add more information:
# hobbies, country of birth, height, etc.

def input_students
	students = []
	puts "Please enter the names of the students."
	puts "To finish, just hit the return button twice."
	name = gets.chomp
	puts "Please enter the birthplace of #{name}."
	puts "To finish, just hit the return button twice."
	birthplace = gets.chomp
	puts "Please enter the date of birth of #{name}. Format (dd/mm/yy)."
	date = gets.chomp
	puts "To finish, just hit the return button twice."

	while !name.empty? do
		students << {name: name, cohort: :November, birthplace: birthplace, date: date}
		puts "#{name} has been added! Now we have #{students.count} students."
		puts "Please enter the name of the next student."
		name = gets.chomp
		break if name == "" 
		puts "Please enter the birthplace of #{name}."
		puts "To finish, just hit the return button twice."
		birthplace = gets.chomp
		puts "Please enter the date of birth of #{name}. Format (dd/mm/yy)."
		date = gets.chomp
		puts "To finish, just hit the return button twice."
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
		puts "- #{student[:name]}, #{student[:cohort]} cohort. Born in #{student[:birthplace]} on the #{student[:date]}."
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