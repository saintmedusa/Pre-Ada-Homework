=begin
In one Ruby file, write code to solve the problems below. Your code 
should print out each problem statement, followed by the output from 
the conditional statement(s).

(1) Prompt for a number. If the number is greater than 70, print PASSING; 
otherwise, print NOT PASSING.
(2) Prompt for a string. If the string is equal to green, print GO, 
otherwise, print STOP.
(3)Prompt for a number. If the number is even, print EVEN, otherwise, 
print ODD.
(4)Prompt for a number. If the number is evenly divisible by 5, print
MULTIPLE OF 5, otherwise, print NOT A MULTIPLE OF 5.
(5) Prompt for a number. If the number is less than 10, print ONE DIGIT.
If the number is 100 or greater, print THREE DIGITS, otherwise print TWO DIGITS.
(6) Prompt for a jersey number. If that number is 12, 71, or 80, print That
number is retired from the Seattle Seahawks!, otherwise do nothing.
(7) Prompt for a state. If the state is Washington, Oregon, or Idaho, print This
state is in the PNW, otherwise print You should move to the PNW; it’s great 
here!
(8) Prompt for a one of the following: SHORT, TALL, GRANDE, VENTI. Print out the
number of ounces that drink includes (8, 12, 16, 20 respectively).
(9) Prompt for rate of pay and hours worked. Calculate gross pay. Provide 
time-and-a-half for hours worked beyond 40 (e.g., if you get paid $10/hr and 
work 45 hours in a week, you would gross $475 (40 x 10 + 5 x 15).
(10) Rewrite the solution to the previous problem adding this modification: do 
not process any employee if their hours worked is greater than 60, instead 
display the message Please see manager.
=end
#(1)
puts "Please enter a number. If it is greater than 70, it passes, otherwise,
it does not pass."
if gets.chomp.to_i > 70
    puts "PASSING"
else
    puts "NOT PASSING"
end
#(2)
puts "Please enter a string. If your string is 'green', you get 'GO', 
otherwise, you get 'STOP'."
if gets.chomp == "green"
    puts "GO"
else
    puts "STOP"
end
#(3)
puts "Enter a number, and I will tell you if it is even or odd."
if gets.chomp.to_i % 2 == 0
    puts "EVEN"
else
    puts "ODD"
end
#(4)
puts "Enter another number.  I will report back whether or not it is a 
multiple of 5."
if gets.chomp.to_i % 5 == 0
    puts "MULTIPLE OF 5" 
else
    puts "NOT A MULTIPLE OF 5"
end
#(5)
puts "Enter a number and I will tell you how many digits it has, unless
it has four or more digits - my limit is 3 digits."
input5 = gets.chomp.to_i
if input5 < 10
    puts "ONE DIGIT"
elsif input5 < 100
    puts "TWO DIGITS"
else
    puts "THREE DIGITS"
end
#(6)
puts "Enter a jersey number. If that number is retired from the Seahawks, 
I'll let you know."
input6 = gets.chomp.to_i
if input6 == 12 || input6 == 71 || input6 == 80
    puts "That number is retired from the Seattle Seahawks!"
end
#(7)
puts "Please enter a state (full name) of the United States."
input7 = gets.chomp.capitalize
if input7 == "Washington" || input7 == "Oregon" || input7 == "Idaho"
    puts "This state is in the PNW."
else 
    puts "You should move to the PNW; it’s great here!"
end
#(8)
puts "Select: SHORT, TALL, GRANDE, or VENTI:"
input8 = gets.chomp
if input8 == "SHORT"
    puts "8 ounces"
elsif input8 == "TALL"
    puts "12 ounces"
elsif input8 == "GRANDE"
    puts "16 ounces"
elsif input8 == "VENTI"
    puts "20 ounces"
else
    puts "Thats not a coffee size!"
end
#(9)
puts "Tell me how many hours you worked and I'll tell you your pay.
First, tell me how many hours you worked:"
hours = gets.chomp.to_i
puts "Okay, now tell me how much you make an hour:"
rate = gets.chomp.to_f
puts "You made:"
if hours <= 40
    puts "$#{format("%.2f", hours * rate)}"
else 
    puts "$#{format("%.2f", hours * rate * 1.5)}" 
end
#(10)
puts "Tell me how many hours you worked and I'll tell you your pay.
First, tell me how many hours you worked:"
hours = gets.chomp.to_i
puts "Okay, now tell me how much you make an hour:"
rate = gets.chomp.to_f
puts "You made:"
if hours <= 40
    puts "$#{format("%.2f", hours * rate)}"
elsif hours <= 60
    puts "$#{format("%.2f", hours * rate * 1.5)}" 
else
    puts "Please see manager."
end


