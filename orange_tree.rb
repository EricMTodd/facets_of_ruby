# This will be a class for an orange tree.

# Plant different types of trees?
# Plant multiple trees with unique ids?
# Default will be navel orange with a ripe season of November through January (FALL).

### Private methods ###

# While it is less than 10 years old it is not mature and it will not produce fruit.
# Count four quarters or seasons per year 
# Once the tree has matured it will begin to produce X amount of fruit based on the tree's age.
# At 30 years it will reach a maximum production rate.
# Each new year, any fruit that was not picked falls from the tree.
# Every year it grows one foot up to a maximum of 20 feet.
# The tree cannot die unless a catastrophic event happens, like a lightning strike.

### Public methods ###

# Users can pick fruit from the tree.
# Users can inspect the trees age up to a certain point based on how much fruit it produces.
# Users can eat an orange.
# Users can pass the time by saying how many months they want to wait.

class Tree
    def initialize()
        @age = 0
        @fruit = 0
        @height = 0
        @mature = false
        @month = []
        # @year = current_time

        puts("You have planted an orange tree. Once it's ten years old it will begin to produce fruit!")
    end
end