class Character
    def initialize(name, age, race, archetype)
        @name = name
        @age = age
        @race = race
        @archetype = archetype
    end
    
    def list()
        puts()
        puts("name: #{@name}")
        puts("age: #{@age}")
        puts("race: #{@race}")
        puts("archetype: #{@archetype}")
    end
end

puts()
puts("What is your character's name?")
name = gets.chomp.capitalize

puts()
puts("What is your character's age?")
age = gets.chomp

puts()
puts("What race is your character?")
race = gets.chomp.capitalize

puts()
puts("What archetype would you like?")
archetype = gets.chomp.capitalize

player = Character.new(name, age, race, archetype)
player.list()