# Research how the method center() of the String class works. Use it in your
# code to make the output beautifully aligned.

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
	puts "The students of Villains Academy".center(50)
	puts "~~~~~~~~~~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~".center(50)
end # <--- Header. ~

def student_list(students)
	students.each_with_index do
		|student|
		puts "- #{student[:name]}, #{student[:cohort]} cohort.".center(50)
	end
end # <--- Iteration of the array. ~

def footer(names)
	puts "~~~~~~~~~~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~".center(50)
	puts "Overall, we have #{names.count} great students.".center(50)
end # <--- Interpolation to count the students || footer. ~


students = input_students
header # <--- Calling header method. ~
student_list(students) # <--- Calling student_list method. ~
footer(students) # <--- Calling footer method. ~