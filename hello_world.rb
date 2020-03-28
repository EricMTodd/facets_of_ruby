puts "Hello world!"
puts 1 + 2

# First Challenge, Output the following:
# Hours in a year?
hours_in_a_year = 24 * 365
puts "Hours in one year: #{hours_in_a_year}"

# Minutes in a decade?
minutes_in_a_decade = 60 * hours_in_a_year * 10
puts "Minutes in a decade: #{minutes_in_a_decade}"

# My current age (26) in seconds?
seconds_in_a_year = 24 * 60 * 60 * 365
age_in_seconds = seconds_in_a_year * 26
puts "Seconds in a year: #{seconds_in_a_year}"
puts "Age in seconds: #{age_in_seconds}"

# The author's age in years, currently 1,160 million seconds.
authors_age_in_seconds = 1160000000
authors_age = authors_age_in_seconds / seconds_in_a_year
puts "Author's age: #{authors_age}"

