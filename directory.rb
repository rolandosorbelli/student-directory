@students = []

def interactive_menu
	loop do
		print_menu
		process(gets.chomp)
	end
end

def print_menu
	puts "1. Input the students"
	puts "2. Show the students"
	puts "9. Exit"
end

def process(selection)
	case selection
		when "1"
			input_students
		when "2"
			show_students
		when "9"
			exit
		else
			puts "I don't know what you meant, try again."
	end
end

def input_students
	puts "Please enter the names of the students."
	puts "To finish, just hit the return button twice."
	name = gets.chomp
	while !name.empty? do
		@students << {name: name, cohort: :November}
		puts "#{name} has been added! Now we have #{@students.count} students."
		name = gets.chomp
	end
end

def show_students
	header
	student_list
	footer
end

def header
	puts "The students of Villains Academy"
	puts "~~~~~~~~~~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~"	
end # <--- Header. ~

def student_list
	@students.each_with_index do |student|
		puts "- #{student[:name]}, #{student[:cohort]} cohort."
	end
end # <--- Iteration of the array. ~

def footer
	puts "~~~~~~~~~~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~"
	puts "Overall, we have #{@students.count} great students."
end # <--- Interpolation to count the students || footer. ~


interactive_menu