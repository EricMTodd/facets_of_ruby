# Comparison Operators
puts 1 > 2 # returns false
puts 1 < 2 # returns true
puts 5 >= 5 # returns true
puts 5 <= 4 # returns false
puts 1 == 1 # returns true
puts 2 != 1 # returns true

# Ruby can compare strings. Ruby evaluates a string by its lexicographical order, which means the order a word would come in a dictionary. If cat comes before dog, and is evaluated with '<', it will return true and vise versa.
puts "cat" < "dog" # returns true
puts "cat" > "dog" # returns false

# Words with capital letters will always come first lexicographically in computers. 'Xander' comes before 'bug lady'.
puts "Xander" > "bug lady" # returns false
puts "Xander".downcase > "bug lady" # returns true

# Branching - The evaluation of true and false.
puts "\nWhat's your name?"
name = gets.chomp.capitalize
puts "\nHello, #{name}!"

if name == "Eric"
    puts "What a strong name."
end

# Introduction to else.
puts "\nI am clairvoyant. What is your name, child?"
name = gets.chomp.capitalize

if name == "Eric"
    puts "#{name}, you are desitned for greatness..."
else
    puts "Your future is bleak, #{name}"
end
# If, else statements can be nested many times. It is good practice to write your end statement as you write your first if.


# Looping
puts "\nType something, anything! Typing \"bye\" will escape the loop."
while true
    input = gets.chomp
    puts input
    if input == "bye"
        break
    end
end

puts "Thank you, come again!"


# elsif
puts "\nWhat's your name?"
name = gets.chomp.capitalize
puts "\nHello, #{name}!"
if name == "Eric"
    puts "What a strong name."
elsif name == "Tiffany"
    puts "That's a beautiful name!"
end


# or
# or evaluates if at least one of the given options is true.
puts "\nWhat's your name?"
name = gets.chomp.capitalize
puts "\nHello, #{name}!"
if name == "Eric" || name == "Tiffany"
    puts "I love your name!"
end

# Challenge 7.5