# Once you complete the previous exercise, change the way the users are
# displayed: print them grouped by cohorts. To do this, you'll need to get a
# list of all existing cohorts (the map() method may be useful but it's not
# the only option), iterate over it and only print the students from that
# cohort.

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
	students.each_with_index do |student|
		choice = "November"
		puts "#{student[:name]}, #{student[:cohort]} cohort." if student[:cohort] == choice
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