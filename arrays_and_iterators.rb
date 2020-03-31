# Method "each" for arrays. You can do something to each index of an array with this method.
girls = ["Tiffany", "Elia", "Jacqueline"]

puts nil
girls.each do |name|
    puts("I love #{name}, she's such a wonderful girl.")
end

# Challenge 8.3
# Buidling and sorting an array. Write a program that asks us to type as many words as we want, one word per line, continuing until enter is pressed on an empty line then repeats the list back in alphabetical order. Use the sort method to accomplish this.
puts("\nType a word, any word! Just make sure it's only one word. There are no spaces allowed in your input. Hit enter on an empty line to see your words displayed in alphabetical order!\n\n")
words_list = []
while true
    input = gets.chomp
    if input == ""
        puts(words_list.sort)
        break
    end
    if input.match(" ")
        puts("\n***INVALID INPUT: NO SPACES ALLOWED***\n\n")
    else
        words_list.push(input)
    end
end

# Table of contents, revisited. Start with an array of all the info for a table of contents. Print out the information from the array inn a beautifully formatted table of contents.
line_width = 42
table_of_contents = ["Chapter 1:".ljust(line_width) + "Ability Scores" + "Page 3".rjust(line_width), "Chapter 2:".ljust(line_width) + "Choosing Your Race" + "Page 10".rjust(line_width), "Chapter 3:".ljust(line_width) + "Choosing Your Class" + "Page 20\n\n".rjust(line_width)]
puts nil
puts ("\nTable of Contents\n".center(line_width))
table_of_contents.each do |new_line|
    puts(new_line)
end
