class Dragon

    def initialize
        @name = name
        @asleep = false
        @stuff_in_belly = 10
        @stuff_in_guts = 0

        puts("#{@name} is born...")
    end

    def feed
        puts("You feed #{@name}.")
        @stuff_in_belly = 0
        passage_of_time
    end

    def walk
        puts("you walk #{@name}")
        @stuff_in_guts = 0
        passage_of_time
    end

    def put_to_bed
        puts("You put #{@name} to bed.")
        @aleep = true
        3.times do
            if @asleep
                passage_of_time
            end
            if @asleep
                puts("#{name} snores softly.")
            end
        end
        if @asleep
            @asleep = false
            puts("#{@name} wakes up slowly.")
        end
    end

    def toss
        puts("You toss #{@name} up into the air. #{@name} appears to be having fun!")
        passage_of_time
    end
    def rock
        puts("You rock #{@name} gently.")
        @asleep = true
        puts("He briefly dozes off...")
        passage_of_time
        if @asleep
            @asleep = falseputs("...but wakes up when you stop.")
        end
    end
    
end