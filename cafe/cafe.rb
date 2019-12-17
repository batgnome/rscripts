require_relative 'drink.rb'
require_relative 'pastry.rb'
class Cafe

  def initialize
    @items = []
  end

  def get_items
    input =''
    puts "Fantastic, what would you like?"
    until input == 'exit'
      input = gets.chomp
      case input
        when 'menu'
          puts Order.menu
        when 'exit'
          puts "would you like to order anything else?"
        else
          input.split(', ')
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
    end
  end

  def print_recipt
    unless @items.empty?
      @items.each { |e| e.list  }
      puts '-' * 14
      puts "#{'total'.ljust(12)} $#{@items.sum { |e| e.total  }}"
    end
  end

end
c = Cafe.new
puts c.create_item('brownide').nil?
