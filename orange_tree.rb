# This will be a class for an orange tree.

# Plant different types of trees?
# Plant multiple trees with unique ids?
# Default will be navel orange with a ripe season of November through January (FALL).

### Private methods ###

# While it is less than 10 years old it is not mature and it will not produce fruit.
# Count four quarters or seasons per year 
# Once the tree has matured it will begin to produce X amount of fruit based on the tree's age.
# At 70 years it will reach a maximum production rate.
# Each new year, any fruit that was not picked falls from the tree.
# Every year it grows one foot up to a maximum of 20 feet.
# The tree cannot die unless a catastrophic event happens, like a lightning strike.

### Public methods ###

# Users can pick fruit from the tree.
# Users can inspect the trees age up to a certain point based on how much fruit it produces.
# Users can eat an orange.
# Users can pass the time by saying how many months they want to wait.

class Tree
    def initialize(tree_type)
        @tree_type = tree_type
        @age = 9
        @height = 0
        @fruit_count = 0
        @mature = false

        puts("\nYou planted your new #{@tree_type} tree. Once it's 10 years old it will begin to produce fruit!")

        puts(passage_of_time)
    end

    private

    def mature?
        @age >= 10
    end

    def max_height?
        @height == 20
    end

    def produce_fruit
        @fruit_count = rand(@age*0.35..@age*5).ceil
        print("Your tree has yielded its fruits! There are #{@fruit_count} #{@tree_type} on the branches.")
    end

    def min_fruit?
        @fruit_count == 0
    end

    def max_fruit?
        @fruit_count == 350
    end

    def passage_of_time 
        @fruit_count = 0
        @age += 1
        puts("One year passes... Your #{@tree_type} tree is now #{@age} year(s) old.")
        if mature?
            produce_fruit
        else
            puts("The tree is too young to produce fruit.")
        end
    end
end



def plant_new_tree
    print("What kind of tree would you like to plant? ")
    tree_type = gets.chomp.to_s.downcase
    new_tree = Tree.new(tree_type)
end

def interact_with_tree
    # TODO
end

plant_new_tree

