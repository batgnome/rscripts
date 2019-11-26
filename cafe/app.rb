require_relative "drink"
require_relative "pastry"
require_relative "cafe"


CAFE = Cafe.new
CAFE.order('drink vanilla soy latte', 'drink soy milk americano', 'pastry brownie')
# cafe.print_recipt


input = ''
until input == 'exit'
  puts 'Are you ready to order?'
  input = gets.chomp
  if input == 'yes' then
    puts "Ok, what would you like?(if you want a menu type 'menu')"
  end
end
