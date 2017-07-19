# students = [
# {name: "Dr. Hannibal Lecter", cohort: :November},
# {name: "Darth Vader", cohort: :November},
# {name: "Nurse Ratched", cohort: :November},
# {name: "Michael Corleone", cohort: :November},
# {name: "Alex DeLarge", cohort: :November},
# {name: "The Wicked Witch of the West", cohort: :November},
# {name: "Terminator", cohort: :November},
# {name: "Freddy Krueger", cohort: :November},
# {name: "The Joker", cohort: :November},
# {name: "Joffrey Baratheon", cohort: :November},
# {name: "Norman Bates", cohort: :November}
# ] # <--- List of the students. ~


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
	students.each { |student| puts "#{student[:name]}, #{student[:cohort]} cohort." }
end # <--- Iteration of the array. ~

def footer(names)
	puts "~~~~~~~~~~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~"
	puts "Overall, we have #{names.count} great students."
end # <--- Interpolation to count the students || footer. ~


students = input_students
header # <--- Calling header method. ~
student_list(students) # <--- Calling student_list method. ~
footer(students) # <--- Calling footer method. ~