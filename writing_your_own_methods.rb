# Basic Method to say "Mooooo..."
def say_moo
    puts("Mooooo...")
end

say_moo

# Experimenting...
puts("\nType a number, any number.")
def square_this(x)
    puts("Your number squared is #{x * x}")
end

input = gets.chomp.to_i
square_this(input)

# Challenge 9.5
# The Questionnaire. Create a method that asks someone a yes or no question. Simple enough.
def ask(question)
    puts("\n#{question}")
    while true
        reply = gets.chomp.downcase
        if reply == "yes"
            return true
        elsif reply == "no"
            return false
        else
            puts("\n***INVALID INPUT***: Please type yes, or no.")
            puts(question)
        end
    end
end

ask("Do you like cake?")
ask("Are we having fun yet?")
ask("Do you want to play a game?")

# Roman Numerals. Create a method that converts numbers up to 3000 into Roman Numerals.
# I = 1, V = 5, X = 10, L = 50, C = 100, D = 500, M = 1000

puts("\nPlease enter a number between 1 and 3000.")
def convert_num(n)
    values = [
        ["M", 1000],
        ["D", 500],
        ["C", 100],
        ["L", 50],
        ["X", 10],
        ["V", 5],
        ["I", 1]
    ]
    roman_num = ""

    while true
        if n < 1 || n > 3000
            puts("\nPlease enter a number between 1 and 3000.")
            n = gets.chomp.to_i
        else
            values.each do |pair|
                letter = pair[0]
                value = pair[1]
                roman_num += letter*(n / value)
                n = n % value
            end
            return puts(roman_num)
            break
        end    
    end
end

convert_num(n = gets.chomp.to_i)

