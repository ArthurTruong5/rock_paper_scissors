require 'rainbow'
require 'command_line_reporter'

system ('clear')



class Testing
  include CommandLineReporter

def run

header title: 'Arthurs Hell Kitchen', align: 'center', width: 50, color: 'red', bold: true, timestamp: true

  table(border: true) do
    row color: 'white' do
      column('Food', width: 30, color: 'white', align: 'center')

      column('Price', width: 10, color: 'white', align: 'center')

    end # def
    row do # row 1
    column('1.Pho', color: 'cyan')
    column('$10', color: 'yellow')
    end
    row do # row 2
    column('2.Ban Xiao', color: 'cyan')
    column('$12', color: 'yellow')
    end
    row do # row 3
      column('3.Vietnamese Springs Rolls', color: 'cyan')
      column('$14', color: 'yellow')
    end
    row do
    column('4.Pork Roll', color: 'cyan')
    column('$52', color: 'yellow')
    end
    row do
    column('Back To Main Menu', color: 'white')
    column('Press B', color: 'white')
    end
    row do
    column('Print Receipt', color: 'white')
    column('Press P', color: 'white')
    end
end # do
end # do
end # class

Testing.new.run

def option
puts Rainbow("this is red").red + " and " + Rainbow("this on yellow bg").bg(:red) + " and " + Rainbow("even bright underlined!").underline.bright
end

# - - - - - - - - - - - - - - - - - - -- -
def added
    puts Rainbow("Meal Has Been Added, Add More If You Like . . .").white
end

  FOOD = { :pho => 0, :ban_xiao => 0, :vietnamese_spring_rolls => 0, :pork_roll => 0 }

def welcome
  sum = 0
  puts Rainbow("Welcome To Arthur's Hell Kithen").red
  sleep(0.5)
  exit_menu = true
  while exit_menu
  puts Rainbow("Please Enter The Food Number").white
  puts Rainbow("Press B to Go Back To Main Menu").bg(:brown)
  sleep(0.5)
  print "Add Item Number: "
  item = gets.chomp.capitalize
  if item == "1"
    sum += 10
    FOOD[:pho] += 1
    sleep(0.5)
    added
  elsif item == "2"
    sum += 12
    FOOD[:ban_xiao] += 1
    sleep(0.5)
    added
  elsif item == "3"
    sum += 14
    FOOD[:vietnamese_spring_rolls] += 1
    sleep(0.5)
    added
  elsif item == "4"
    sum += 52
    FOOD[:pork_roll] += 1
    sleep(0.5)
    added
  elsif item == "B"
    system ('clear')
    exit_menu = false
    Testing.new.run
    welcome
  elsif item == "P"
    sleep(1)
    puts "Printing . ."
    sleep(0.5)
    puts "You Bought #{FOOD[:pho]} Pho"
    sleep(0.5)
    puts "You Bought #{FOOD[:ban_xiao]} Ban Xiao"
    sleep(0.5)
    puts "You Bought #{FOOD[:vietnamese_spring_rolls]} Vietnamese Spring Rolls"
    sleep(0.5)
    puts "You Bought #{FOOD[:pork_roll]} Pork Rolls"
    sleep(0.5)
    puts "Costing a Total Of $#{sum}"
    exit_menu = false

  else
    puts Rainbow("INVALID OPTION\nEnter a Number!").bg(:red)
  end
end
end


welcome
