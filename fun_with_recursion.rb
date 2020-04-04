# CIV III Continent Counter
# This challenge proved very difficult for me to understand and I had to do lots of external reading and reasearch to grasp and solve this challenge.
# Stack Overflow help - https://stackoverflow.com/questions/16848686/chris-pine-ruby-ch-10-recursion
M = "land"
o = "water"

world = [
    [o,o,o,M,o,o,o,o,o,o,o],
    [o,o,o,o,M,M,o,o,o,o,o],
    [o,o,o,o,o,o,o,o,M,M,o],
    [o,o,o,M,o,o,o,o,o,M,o],
    [o,o,o,M,o,M,M,o,o,o,o],
    [o,o,o,o,M,M,M,M,o,o,o],
    [o,o,o,M,M,M,M,M,M,M,o],
    [o,o,o,M,M,o,M,M,M,o,o],
    [o,o,o,o,o,o,M,M,o,o,o],
    [o,M,o,o,o,M,o,o,o,o,o],
    [o,o,o,o,o,o,o,o,o,o,o]
]

def continent_size(world, x, y)
    # Challenge solution
    if y + 1 > world.length || x + 1 > world[y].length
        return 0 
    end
    # Solution achieved with the help of StackOverflow user MDJ - https://stackoverflow.com/users/3897619/mdj
    if world[y][x] != "land"
        return 0
    end
    size = 1
    world[y][x] = "counted land"

    size = size + continent_size(world, x - 1, y - 1)
    size = size + continent_size(world, x, y - 1)
    size = size + continent_size(world, x + 1, y - 1)
    size = size + continent_size(world, x - 1, y)
    size = size + continent_size(world, x + 1, y)
    size = size + continent_size(world, x - 1, y + 1)
    size = size + continent_size(world, x, y + 1)
    size = size + continent_size(world, x + 1, y + 1)
    size
end

puts nil
puts(continent_size(world, 5, 5))


# Recursive sorting
puts nil
def sort(nato)
    recursive_sort(nato, [])
end

def recursive_sort(unsorted_array, sorted_array)
    while unsorted_array.length > 0
        unsorted_array.each do |i|
            eval = ""
            counter = 0
            unsorted_array.each do |k|
                if i >= k
                    counter += 1
                end
            end
            if counter == 1
                eval = i
                sorted_array.push(eval)
                unsorted_array.delete_at(unsorted_array.index(i))
            end
        end
    end
    puts("sorted_array: #{sorted_array}")
end

sort(["Zulu", "X-Ray", "Yankee", "Whiskey", "Tango", "Foxtrot"])