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

  def add(item)
    @items << item
  end

  def print_recipt

    @items.each { |e| e.list  }
    puts '-' * 14
    puts "#{'total'.ljust(11)} #{@items.sum { |e| e.total  }}"
  end

end
