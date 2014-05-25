=begin
puts "After the beep, the time will be"
puts Time.now

animals = ["lab", "pitty", ["boston", "shepard"],["1", "2", "3"]]

puts [3][1]

animals.each do |animal|
  puts animal
end

birds = {"box 1" => "stuff", "box 2" => "stuff"}

puts ["box 1"]
=end
=begin
a = 2

if a == 2
  puts "I am happy I finally figured something out"
end
=end
prints = "what's your first name?"
first_name = gets.chomp
first_name.capitalize

prints = "what's your last name?"
last_name = gets.chomp
last_name.capitalize

prints = "what city are you from?"
city = gets.chomp
city.capitalize

prints = "what state are you from?"
state = gets.chomp
state.upcase

puts = "your name is #{first_name} and #{last_name} is,
        and you're from #{city}, #{state}!"
