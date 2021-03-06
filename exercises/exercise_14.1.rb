# After we added the code to load the students from file, we ended up with
# adding the students to @students in two places. The lines in load_students()
# and input_students() are almost the same. This violates the DRY (Don't
# Repeat Yourself) principle. How can you extract them into a method to fix
# this problem?

@students = []

def interactive_menu
	loop do
		print_menu
		process(STDIN.gets.chomp)
	end
end

def print_menu
	puts "1. Input the students"
	puts "2. Show the students"
	puts "3. Save the list to students.csv"
	puts "4. Load the list from students.csv"
	puts "9. Exit"
end

def process(selection)
	case selection
		when "1"
			input_students
		when "2"
			show_students
		when "3"
			save_students
		when "4"
			load_students
		when "9"
			exit
		else
			puts "I don't know what you meant, try again."
	end
end

def insert_students
	@students << {name: @name, cohort: :cohort.to_sym}
end

def input_students
	puts "Please enter the names of the students."
	puts "To finish, just hit the return button twice."
	@name = STDIN.gets.chomp
	while !name.empty? do
		insert_students
		puts "#{name} has been added! Now we have #{@students.count} students."
		@name = STDIN.gets.chomp
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

def save_students
	file = File.open("../students.csv", "w")
	@students.each do |student|
		student_data = [student[:name], student[:cohort]]
		csv_line = student_data.join(",")
		file.puts csv_line
	end
	file.close
	puts "The list of students has been saved!"
end

def load_students(filename = "../students.csv")
	file = File.open(filename, "r")
	file.readlines.each do |line|
		@name, cohort = line.chomp.split(",")
		insert_students
	end
	file.close
end

def try_load_students
	filename = ARGV.first # <-- first argumento from the Command Line. ~
	return if filename.nil?
	if File.exist?(filename)
		load_students(filename)
		puts "Loaded #{@students.count} from #{filename}."
	else
		puts "Sorry, #{filename} doesn't exist."
		exit
	end
end

def footer
	puts "~~~~~~~~~~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~"
	puts "Overall, we have #{@students.count} great students."
end # <--- Interpolation to count the students || footer. ~

try_load_students
interactive_menu