class Cafe

  def initialize
    @items = []
  end

  def order(*order)
    order.each do |e|
      type, *order = e.split
      if e.include?('drink')
        self.add(Drink.new(order.join(' ')))
      elsif e.include?('pastry')
        self.add(Pastry.new(order.first))
      end
    end
    self.print_recipt
  end

  def input_loop

    input = ''
    puts 'what would you like?(type menu for menu)'
    order_input =''
    until input == 'exit'

      input = gets.chomp
      if input == 'menu'
        Order.menu
      end

      if Order.all_item_prices.has_key?(input)
        order_input += input + " "
        puts order_input
      end

      if Order.add_on_prices.has_key?(input)
        puts "please order a drink first"
      end


    end
  end

  def add(item)
    @items << item
  end

  def print_recipt

    @items.each { |e| e.list  }
    puts '-' * 14
    puts "#{'total'.ljust(11)} #{@items.sum { |e| e.total  }}"
  end

end
