# Chapter 14 -  Blocks and Procs

toast = Proc.new do
    puts("Cheers!")
end

puts
toast.call
toast.call
toast.call

do_you_like = Proc.new do |good_stuff|
    puts("I really like #{good_stuff}")
end

puts
do_you_like.call("chocolate")
do_you_like.call("ruby")


# 14.1 - Methods That Take Procs

def do_self_importantly(some_proc)
    puts("\nEverybody just HOLD ON! I'm doing something...")
    some_proc.call
    puts("Okay everyone, I'm done. As you were.")
end

say_hello = Proc.new do
    puts("Hello")
end

say_goodbye = Proc.new do
    puts("Goodbye")
end

do_self_importantly(say_hello)
do_self_importantly(say_goodbye)


# Example of calling a proc 0.5 times and 2 times.
def maybe_do(some_proc)
    if rand(2) == 0
        some_proc.call
    end
end

def twice_do(some_proc)
    some_proc.call
    some_proc.call
end

wink = Proc.new do
    puts("<wink>")
end

glance = Proc.new do
    puts("<glance>")
end

puts
maybe_do(wink)
maybe_do(wink)
maybe_do(glance)
maybe_do(glance)
twice_do(wink)
twice_do(glance)


# This method takes some object and a proc will call the proc on the object. If the proc returns false, we quit; otherwise, we call the proc with the returned object. We keep doing this until the proc returns false (which will happen eventually, or the program will crash). The method will return the last true value returned by the proc.

def do_until_false(first_input, some_proc)
    input = first_input
    output = first_input

    while output
        input = output
        output = some_proc.call(input)
    end

    input
end

build_array_of_squares = Proc.new do |array|
    last_number = array.last
    if last_number <= 0
        false
    else
        array.pop
        array.push(last_number*last_number)
        array.push(last_number - 1)
    end
end

always_false = Proc.new do |just_ignore_me|
    false
end

puts
puts(do_until_false([5], build_array_of_squares).inspect)

yum = "lemonade with a hint of orange blossom water"
puts(do_until_false(yum, always_false))


# 14.2 - Blocks That Return Procs
# In this example, compose takes two procs and returns a new proc that, when called, calls the first proc and passes its result into the second.

def compose(proc1, proc2)
    Proc.new do |x|
        proc2.call(proc1.call(x))
    end
end

square_it = Proc.new do |x|
    x * x
end

double_it = Proc.new do |x|
    x + x
end

double_then_square = compose(double_it, square_it)
square_then_double = compose(square_it, double_it)

puts
puts(double_then_square.call(5))
puts(square_then_double.call(5))


# 14.3 - Passing Blocks (Not Procs) into Methods

class Array
    def each_even(&was_a_block__now_a_proc)
        is_even = true

        self.each do |object|
            if is_even
                was_a_block__now_a_proc.call(object)
            end

            is_even = !is_even
        end
    end
end

puts
fruits = ["apple", "banana", "cherry", "dragonfruit"]
fruits.each_even do |fruit|
    puts("Yum! I just love #{fruit} pies, don't you?")
end

[1, 2, 3, 4, 5].each_even do |odd_ball|
    puts("#{odd_ball} is NOT an even number!")
end