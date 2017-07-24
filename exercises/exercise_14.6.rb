# We are opening and closing the files manually. Read the documentation of the
# File class to find out how to use a code block (do...end) to access a file,
# so that we didn't have to close it explicitly (it will be closed
# automatically when the block finishes). Refactor the code to use a code
# block.

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
		when "1" then input_students
		when "2" then show_students
		when "3" 
			puts "Please, give a name to the list you want to save."
			save_students
		when "4"
			puts "Please, enter the name of the list you want to open."
			load_students
		when "9" then exit
		else
			puts "I don't know what you meant, try again."
	end
end

def input_students
	puts "Please enter the names of the students."
	puts "To finish, just hit the return button twice."
	name = STDIN.gets.chomp
	while !name.empty? do
		@students << {name: name, cohort: :November}
		puts "#{name} has been added! Now we have #{@students.count} students."
		name = STDIN.gets.chomp
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
	list = gets.chomp
	file = File.open(list, "w") do |file|
		@students.each do |student|
			student_data = [student[:name], student[:cohort]]
			csv_line = student_data.join(",")
			file.puts csv_line
		end
	end
	puts "The list of students has been saved!"
end

def load_students(filename = gets.chomp)
	file = File.open(filename, "r") do |file|
		file.readlines.each do |line|
			name, cohort = line.chomp.split(",")
			@students << {name: name, cohort: cohort.to_sym}
		end
	end
	puts "The list of the students has been loaded!"
end

def try_load_students
	if ARGV == true
		filename = "../students.csv"
	else
		filename = ARGV.first # <-- first argumento from the Command Line. ~
	end
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