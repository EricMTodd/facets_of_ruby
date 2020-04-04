# New Classes of Objects
alpha = Array.new + [12345]      # Array addition
bravo = String.new + "wie gehts" # String addition
charlie = Time.new               # Current date and time

puts
puts "alpha: #{alpha}"
puts "bravo: #{bravo}"
puts "charlie: #{charlie}"

# The Hash Class
dict_array = [] # Array literal; same as Array.new
dict_hash = {}  # Hash literal; same as Hash.new

dict_array[0] = "alpha"
dict_array[1] = "bravo"
dict_array[2] = "charlie"
dict_array[3] = "delta"

# Hashes are basically dictionaries in python, and this is how they are established.
dict_hash["a"] = "alpha"
dict_hash["b"] = "bravo"
dict_hash["c"] = "charlie"
dict_hash["d"] = "delta"
# You can also write them like this:
nato_hash = {
    "a" => "alpha",
    "b" => "bravo",
    "c" => "charlie",
    "d" => "delta"
}

puts
dict_array.each do |word|
    puts(word)
end

puts
dict_hash.each do |letter, word|
    puts("#{letter}: #{word}")
end

puts
nato_hash.each do |letter, word|
    puts("#{letter}: #{word}")
end


# Ranges. Range represents intervals of numbers.
puts
# Range literal
letters = "a".."c"

# Convert range to an array
puts(["a", "b", "c"] == letters.to_a)

# Iterate over a range
("A".."Z").each do |letter|
    print(letter)
end

god_bless_the_70s = 1970..1979
puts
puts
puts(god_bless_the_70s.min)
puts(god_bless_the_70s.max)
puts(god_bless_the_70s.include?(1979))
puts(god_bless_the_70s.include?(1980))
puts(god_bless_the_70s.include?(1974.5))