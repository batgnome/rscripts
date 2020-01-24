require_relative 'edible'
require_relative "drink"
require_relative "pastry"
require_relative "cafe"


CAFE = Cafe.new



if __FILE__ == $0
  puts "Hello and welcome to the Ruby Cafe! If you are ready to order type 'ok'. for more options type 'help'."
  input = ''
  until input == 'exit'

    input = gets.chomp

    case input
      when 'ok', 'yes'
        CAFE.get_items
      when 'help'
        puts "'menu' => menu \n'print' => print reciept\n'list' => to list your items\n'exit' => to exit\n 'ok' => to order items"
      when 'menu'
        Order.menu
      when 'list'
        CAFE.list
      when 'exit', 'done', 'no', 'nothing'
        puts 'Thank you for shopping!'
        input = 'exit'
        CAFE.print_recipt
      when 'print', 'reciept', 'print reciept'
        CAFE.print_recipt
        puts "Are you done ordering?"
        if gets.chomp == ('yes' || 'ok')
          input = exit
        elsif gets.chomp == 'no'
          puts "ok, what else would you like?"
          CAFE.get_items
        end
      else
        puts "please input something valid"
    end

  end

end
