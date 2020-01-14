# Day3 Exercises

=begin
(1) Write a program that allows a user to play a guessing number game. Your program should 
generate a random number between 0 – 1000 (including 0, but not including 1000). Allow 
the user to make a guess until they guess the answer. After each guess you should print 
"higher" or "lower". When they guess it correctly print a winning message along with 
their total number of guesses.
    Notes: rand()
    Without arguments, rand gives you a floating point number between 0 & 1 EXCLUSIVE
    With an integer argument (rand(10)) you get a new integer greater than or equal to 0 & 
    less than that num
    With a range argument (rand(1..20)) you get an integer between the start of the range &
    the end of the range INCLUSIVE
=end

random_num = rand(0..1000)
guesses = 0
correct = false

puts "Welcome to the Random Number Game!
 Guess my number, between 0-1000 (inclusive)."
while correct == false
    puts "Guess the number:"
    user_guess = gets.to_i
    guesses += 1
    if user_guess == random_num
        correct = true
        puts "Wow, you guessed it! And just in #{guesses} guesses."        
    elsif user_guess > random_num
        puts "Guess lower..."
    else
        puts "Guess higher..."
    end
end


=begin  
(2)Write a program that plays duck duck goose. Allow the user to enter the player's number
they want to call goose on, and then say "duck" for each player before the "goose", then 
say "goose" for the chosen player.

Which player do you want to Goose? 5

Player 1: Duck
Player 2: Duck
Player 3: Duck
Player 4: Duck
Player 5: Goose

=end
puts "Let's play a turn of Duck Duck Goose!"
puts "Which player (out of 5) do you want to Goose?"
goose = gets.to_i
(1..5).each do |n|
    print "Player #{n}: "
    if goose == n
        puts "Goose"
    else
        puts "Duck"
    end
end

=begin 
Write a program that allows a user to enter the number of petals on a flower. Then one by one, 
print “plucking petal #1: they love me!”. Alternate “They love me” and “They love me not” as 
well as increase the petal number for each petal.
=end
puts "Let's play 'Love Me, Love Me Not'"
puts "How many petals does your flower have?"
petals = gets.to_i
(1..petals).each do |n|
    print "plucking petal ##{n}:"
    if n % 2 == 0
        puts "they love me not..."
    else
        puts "they love me!"
    end
end

=begin
You don't trust your users. Modify the program below to require the user to enter the same 
value twice in order to add that value to the total.

Code
puts "Hello! We are going to total some numbers!"
puts "Enter a negative number to quit."

total = 0
input = gets.chomp.to_i
while input > -1
  total += input
  input = gets.chomp.to_i
end

puts "Result: #{total}"

Example run
Hello! We are going to total some numbers!
Enter a negative number to quit.

3
3
2
2
-1
-1

Result: 5
=end

puts "Hello! We are going to total some numbers!"
puts "Enter a negative number to quit."

total = 0
input = 0

while input > -1
  input1 = gets.chomp.to_i
  input2 = gets.chomp.to_i
  if input1 == input2
    input = input1
    if input <= -1
    total += input
    end
  end
end

puts "Result: #{total}"
