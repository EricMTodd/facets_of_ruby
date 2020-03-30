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
# 99 Bottles of beer. Write a program that prints out the lyrics to "99 Bottles of Beer On the Wall".

bottle_count = 99
while bottle_count > 0
    if bottle_count == 1
        puts("\n#{bottle_count} bottle of beer on the wall, #{bottle_count} bottle of beer.")
        bottle_count -= 1
        puts("Take it down and pass it around, no more bottles of beer on the wall.")
    else
        puts("\n#{bottle_count} bottles of beer on the wall, #{bottle_count} bottles of beer.")
        bottle_count -= 1
        puts("Take one down and pass it around, #{bottle_count} bottles of beer on the wall.")
    end
end

# Deaf Grandma. Whatever you say to Grandma (whatever you type in, she should respond "HUH?! SPEAK UP, CHILD!")
puts("\nSay something to your dear old granny, you may want to speak up. She is VERY hard of hearing.")
bye_count = 0
while bye_count < 3
    input = gets.chomp
    if input == "BYE"
        bye_count += 1
        # puts("#{bye_count}")
    elsif input == input.upcase
        bye_count = 0
        puts("\nNO, NOT SINCE #{rand(1930..1950)}!")
    else
        bye_count = 0
        puts("\nHUH?! SPEAK UP, CHILD!")
    end
end

# Leap years. Write a progaram that asks for a starting year and an ending year then puts all the leap years between them (and including them, if they are also leap yeas). Leap years are divisible by 4 (like 1984 and 2004). However, years divisible by 100 are not leap years (such as 1800 and 1900) unless they are also divisble by 400 (such as 1600 and 2000, which were in fact leap years).

puts("\nEnter a starting year.")
starting_year = gets.chomp.to_i
puts("Enter an ending year.")
ending_year = gets.chomp.to_i
puts("")
while starting_year <= ending_year
    if starting_year % 4 == 0 && starting_year % 100 != 0
        puts(starting_year)
    elsif starting_year % 400 == 0
        puts(starting_year)
    end
    starting_year += 1
end
