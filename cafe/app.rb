require_relative "order"
require_relative "drink"
require_relative "pastry"
require_relative "cafe"


CAFE = Cafe.new
#CAFE.order('drink vanilla soy latte', 'drink soy milk americano', 'pastry brownie')
# cafe.print_recipt


input = ''
until input == 'exit'

  puts "Would you like to see a menu or are you ready to order?(type 'hlep' for a list of commands)"
  input = gets.chomp

  case input
    when 'yes'
      CAFE.get_items
    when 'help'
      puts "'menu' => menu \n'print' => print reciept\n'list' => to list your items\n'exit' => to exit"
    when 'menu'
      Order.menu
    when 'list'
      CAFE.list
    when 'exit'
      puts 'Thank you for shopping!'
    when 'print'
      CAFE.print_recipt
    else
      puts "please input something valid"
  end

end
