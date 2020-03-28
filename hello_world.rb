puts "Hello world!"
puts 1 + 2
puts("")

# First Challenge, Output the following:
# Hours in a year?
hours_in_a_year = 24 * 365
puts "Hours in one year: #{hours_in_a_year}\n\n"

# Minutes in a decade?
minutes_in_a_decade = 60 * hours_in_a_year * 10
puts "Minutes in a decade: #{minutes_in_a_decade}\n\n"

# My current age (26) in seconds?
seconds_in_a_year = 24 * 60 * 60 * 365
age_in_seconds = seconds_in_a_year * 26
puts "Seconds in a year: #{seconds_in_a_year}"
puts "Age in seconds: #{age_in_seconds}\n\n"

# The author's age in years, currently 1,160 million seconds.
authors_age_in_seconds = 1160000000
authors_age = authors_age_in_seconds / seconds_in_a_year
puts "Author's age: #{authors_age}\n\n"


# Gets challenge, section 5.5
puts gets
puts "\nWhat's your name? "
name = gets.chomp
puts "\nHello #{name}, it's a pleasure to meet you!"


# Challenge 5.6
# Get a person's full name and greet them with it.
puts "\nWhat's your first name? "
first_name = gets.chomp

puts "\nWhat's your middle name? "
middle_name = gets.chomp

puts "\nWhat's your last name? "
last_name = gets.chomp

puts "\nHello #{first_name} #{middle_name} #{last_name}, it's a pleasure to meet you!\n"

# Get someone's favorite number, add one and suggest it as a better favorite number.
puts "\nWhat's your favorite number?"
favorite_number = gets.chomp.to_i
new_favorite_number = favorite_number + 1
puts "\nMay I recommend your favorite number be #{new_favorite_number}? It is bigger and better than #{favorite_number} after all.\n\n"