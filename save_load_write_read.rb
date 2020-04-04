# Chapter 11  - Reading and Writing, Saving and Loading, Yin and... Something Else

# Basic reading and writing algorithm.
filename = "aristotle_quote.txt"
test_string = "We are what we repeatedly do. Excellence therefor, is not an act but a habit."

File.open filename, "w" do |f|
    f.write(test_string)
end

read_string = File.read(filename)
puts(read_string == test_string)


# YAML
# YAML is a format for representing objects as strings
require "yaml"

test_array = ["Bok choi!", "Bone door!", "Squish bucket!", "I hate scrolls!"]

test_string = test_array.to_yaml

filename = "failed_thom_clone_quotes.txt"

File.open filename, "w" do |f|
    f.write(test_string)
end

read_string = File.read(filename)

read_array = YAML::load(read_string)
puts(read_string == test_string)
puts(read_array == test_array)