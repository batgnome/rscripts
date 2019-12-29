require_relative 'drink.rb'
require_relative 'pastry.rb'
class Cafe

  def initialize
    @items = []
  end

  def get_items

    input =''
    puts "Fantastic, what would you like?('help' for more info)"
    until input == 'done'
      input = gets.chomp
      case input
        when 'menu'
          puts Order.menu
        when 'exit', 'done', 'no'
          puts "would you like to order anything else?"
          input = 'done'
        when 'help'
          puts "'menu' => menu \n'list' => to list your items\n'done' => to exit"
        when 'list', 'orders', 'order'
          list
        else
          add(create_item(input))
      end

    end

  end

  def create_item(string)
    type = Drink.create(string) || Pastry.create(string)
  end

  def add(item)
    unless item.nil?
      @items << item
      puts "Anything else?"
    else
      puts "I'm sorry, that is not a valid item"
    end
  end

  def print_recipt
    unless @items.empty?
      @items.each { |e| e.list  }
      puts '-' * 14
      puts "#{'total'.ljust(12)} $#{@items.sum { |e| e.total  }}"
    else
      puts "You haven't ordered anything yet"
    end
  end

  def list
    puts "-"*12
    @items.each { |e| puts e.type  }
    puts "-"*12
  end

end
