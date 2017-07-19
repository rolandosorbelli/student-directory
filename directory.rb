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

puts "The students of Villains Academy"
puts "------------"
students.each { |student| puts student } # <--- Iteration of the array. ~
puts "------------"
puts "Overall, we have #{students.count} great students." # <--- Interpolation to count the students. ~