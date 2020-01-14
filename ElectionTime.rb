# Election Time is a tool to help you tally th ballots and report election results!

#Initialize variables
winner = nil
most_votes = 0
votes = Array.new
candidates = ["James Baxter", "Finn", "Princess Bubblegum", "Marceline"]
tracker = Hash.new
candidates.each do |name|
    tracker[name] = 0;
end

# Introduction to user
puts "Welcome to Election Voting Tracker. We display ballot candidates,
record votes, tally votes, and report results."

puts "Ballot Candidates are: James Baxter, Finn, Princess Bubblegum, Marceline"


# Gather data
puts "How many votes are we tallying?"
NUM_VOTES = gets.chomp.to_i

puts "Please record votes:"
(1..NUM_VOTES).each do |n|
    puts "Vote##{n}:"
    votes << gets.chomp
end

# Tally votes, handle write-ins
votes.each do |vote|
    # local variable for keeping track if vote has been counted
    tallied = false
    # cycle through the candidates names, record vote
    candidates.each do |name|
        if vote == name
            tracker[name] += 1
            tallied = true
        end
    end
    # if vote is a write-in candidate, add to candidate list, record vote
    if tallied == false
        candidates << vote
        tracker[vote] = 1
    end
end

# Report results
puts "Election Results are:"

candidates.each do |name|
    # print total tallies
    print "#{name} has #{tracker[name]} vote"
    if tracker[name] != 1 # plural "votes" handling
        print "s"
    end
    puts "."
    # record winner
    if tracker[name] > most_votes
        winner = name
        most_votes = tracker[name]
    end
end

puts "The winner is #{winner}!"



