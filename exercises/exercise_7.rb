# In the input_students method the cohort value is hard-coded. How can you ask
# for both the name and the cohort? What if one of the values is empty? Can
# you supply a default value? The input will be given to you as a string? How
# will you convert it to a symbol? What if the user makes a typo?

def input_students
	students = []
	puts "Please enter the names of the students."
	puts "To finish, just hit the return button twice."
	name = gets.chomp
	puts "Please enter the cohort you want to sign for."
	puts "To finish, just hit the return button twice."
	cohort = gets.chomp
	while !name.empty? || !cohort.empty? do
		students << {name: name, cohort: cohort}
		puts "#{name} has been added! Now we have #{students.count} students."
		puts "Please enter the name of the next student."
		name = gets.chomp
		break if name.empty?
		puts "Please enter the cohort you want to sign for."
		puts "To finish, just hit the return button twice."
		cohort = gets.chomp
		return students << {name: name, cohort: "unknown"} if cohort.empty?
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
		puts "- #{student[:name]}, unknown cohort." if :cohort.empty?
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