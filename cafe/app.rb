require_relative "order"
require_relative "drink"
require_relative "pastry"
require_relative "cafe"


CAFE = Cafe.new
#CAFE.order('drink vanilla soy latte', 'drink soy milk americano', 'pastry brownie')
# cafe.print_recipt

puts "Hello and welcome to the Ruby Cafe! If you are ready to order type 'ok'! for more options type 'help'!"
input = ''
until input == 'exit'

  input = gets.chomp

  case input
    when 'ok'
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
