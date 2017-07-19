students = [
"Dr. Hannibal Lecter",
"Darth Vader",
"Nurse Ratched",
"Michael Corleone",
"Alex DeLarge",
"The Wicked Witch of the West",
"Terminator",
"Freddy Krueger",
"The Joker",
"Joffrey Baratheon",
"Norman Bates"
] # <--- List of the students. ~

def header
	puts "The students of Villains Academy"
	puts "------------"	
end # <--- Header. ~

def student_list(names)
	names.each { |name| puts name }
end # <--- Iteration of the array. ~

def footer(names)
	puts "------------"
	puts "Overall, we have #{names.count} great students."
end # <--- Interpolation to count the students || footer. ~

header # <--- Calling header method. ~
student_list(students) # <--- Calling student_list method. ~
footer(students) # <--- Calling footer method. ~