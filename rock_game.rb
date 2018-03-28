# create hases

system 'clear' or system 'cls'

WINS = { :computer => 0, :user => 0, :draw => 0 }

# made 3 arrays
HANDLER = {
  :rock => { :rock => :tie, :paper => :lose, :scissors => :win },
  :paper => { :rock => :win, :scissors => :lose, :paper => :tie},
  :scissors => { :scissors => :tie, :paper => :win, :rock => :lose}
}

# Making the computer pick a random
def computer
  choice = rand(1..3) # random selection
  choice == 1 ? :rock : choice == 2 ? :paper : :scissors
end

# Method to determine who wins and score tally
def compare(outcome)
  if outcome == :win
    puts "You win!"
  WINS[:user] += 1
elsif outcome == :lose
    puts "You lose!"
  WINS[:computer] += 1
else
  puts "Tie game!"
  WINS[:draw] += 1
end
end

# Program starts here

def play
  puts "
  ▬▬▬▬▬▬▬▬▬▬ஜ۩۞۩ஜ▬▬▬▬▬▬▬▬▬▬▬

        Ready to Play?

  ▬▬▬▬▬▬▬▬▬▬ஜ۩۞۩ஜ▬▬▬▬▬▬▬▬▬▬▬

  "
puts "Enter your choice : Rock (1), Paper (2). Scissors (3)"
# computer picks
comp_choice = computer
case gets.chomp.to_s.downcase
    when 'rock', '1'
      puts "
      ▬▬▬▬▬▬▬▬▬▬ஜ۩۞۩ஜ▬▬▬▬▬▬▬▬▬▬▬

            You Picked: Rock

      ▬▬▬▬▬▬▬▬▬▬ஜ۩۞۩ஜ▬▬▬▬▬▬▬▬▬▬▬
      "
    # Computers turn starts here
    puts "Computer is picking . . ."
    sleep(1.5)
    puts "Computer picked #{comp_choice.capitalize}"
    sleep(1)
    compare(HANDLER[:rock][comp_choice])
    #compare will turn the method on
    #HANDLER[:rock] <-- displays where the array is from

  when 'paper', '2'
    puts "
    ▬▬▬▬▬▬▬▬▬▬ஜ۩۞۩ஜ▬▬▬▬▬▬▬▬▬▬▬

        You Picked: Paper

    ▬▬▬▬▬▬▬▬▬▬ஜ۩۞۩ஜ▬▬▬▬▬▬▬▬▬▬▬
    "
    puts "Computer is picking . . ."
    sleep(1.5)
    puts "Computer picked #{comp_choice.capitalize}"
    sleep(1)
    compare(HANDLER[:paper][comp_choice])

  when 'scissors', '3'
    puts "

    ▬▬▬▬▬▬▬▬▬▬ஜ۩۞۩ஜ▬▬▬▬▬▬▬▬▬▬▬

       You Picked: Scissors

    ▬▬▬▬▬▬▬▬▬▬ஜ۩۞۩ஜ▬▬▬▬▬▬▬▬▬▬▬
    "
    puts "Computer is picking . . ."
    sleep(1.5)
    puts "Computer picked #{comp_choice.capitalize}"
    sleep(1)
    compare(HANDLER[:scissors][comp_choice])
  else
    puts "Invalid Choice"
end
puts "Would you like to continue playing?"
puts "1.Y\n2.N\n"
continue = gets.chomp.downcase
system "clear" or system "cls"

if continue == "y"
  play
elsif continue == '1'
  play
else
  puts "Your result is #{WINS[:user]}"
  puts "Computer result is #{WINS[:computer]}"
  puts "Draw result is #{WINS[:draw]}"

sleep (0.5)

puts "Thanks for Playing Arthurs App"

end
end

play
