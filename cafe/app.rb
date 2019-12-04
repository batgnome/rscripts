require_relative "drink"
require_relative "pastry"
require_relative "cafe"
require_relative "order"


CAFE = Cafe.new
#CAFE.order('drink vanilla soy latte', 'drink soy milk americano', 'pastry brownie')
# cafe.print_recipt


input = ''
until input == 'exit'

  puts "Would you like to see a menu or are you ready to order?(type 'menu' for menu)"
  input = gets.chomp

  case input
    when 'yes'
        CAFE.input
    when 'menu'
      Order.new.class.menu
    when 'exit'
      puts 'Thank you for shopping!'
    else
      puts "please input something valid"
  end

end
