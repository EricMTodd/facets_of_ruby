# Creating New Classes, Changing Existing Ones
# Basic class
# class Integer
#     def to_eng
#         if self == 5
#             english = "five"
#         else
#             english = "fourty-two"
#         end

#         english
#     end
# end

# puts
# puts(5.to_eng)
# puts(42.to_eng)
# puts


# # Dice class
# class Die
#     def roll
#         1 + rand(6)
#     end
# end

# # Create two dice
# dice = [Die.new, Die.new]
# dice.each do |die|
#     puts die.roll
# end
# puts


# # Instance Variables. Instance variables last as long as an object does.
# class Die
#     def roll
#         @number_showing = 1 + rand(6)
#     end

#     def showing
#         @number_showing
#     end
# end

# die = Die.new
# die.roll
# puts(die.showing)
# puts(die.showing)
# die.roll
# puts(die.showing)
# puts(die.showing)
# puts


# Initializing classes
class Die
    def initialize
        # cheat
        roll
    end

    def cheat
        @number_showing = 1
    end

    def roll
        @number_showing = 1 + rand(6)
    end

    def showing
        @number_showing
    end
end

puts
puts Die.new.showing
puts
