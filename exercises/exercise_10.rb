# We've been using the chomp() method to get rid of the last return character.
# Find another method among those provided by the String class that could be
# used for the same purpose (although it will require passing some arguments).

def input_students
	puts "Please enter the names of the students."
	puts "To finish, just hit the return button twice."
	students = []
	name = gets.gsub(/\n/, "")
	while !name.empty? do
		students << {name: name, cohort: :November}
		puts "#{name} has been added! Now we have #{students.count} students."
		name = gets.gsub(/\n/, "")
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
	puts "Overall, we have #{names.count} great students."
end # <--- Interpolation to count the students || footer. ~


students = input_students
header # <--- Calling header method. ~
student_list(students) # <--- Calling student_list method. ~
footer(students) # <--- Calling footer method. ~