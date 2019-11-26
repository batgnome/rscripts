require_relative "drink"
require_relative "pastry"
require_relative "cafe"


CAFE = Cafe.new
CAFE.order('drink vanilla soy latte', 'drink soy milk americano', 'pastry brownie')
# cafe.print_recipt


input = ''
until input == 'exit'
  puts 'whatcha want?'
  input = gets.chomp
end
