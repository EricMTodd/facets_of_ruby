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
