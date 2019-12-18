
class Pastry

  def initialize(item)
    @pastry = item
  end

  def self.create(string)
    if viable?(string)
      self.new(string)
    end
  end

  def self.viable?(string)
    Order.pastry_prices.has_key?(string)
  end

  def total
    Order.pastry_prices[@pastry]
  end

  def list
    puts "#{@pastry.to_s.ljust(13)}$#{Order.pastry_prices[@pastry]}\n"
  end
end

if __FILE__ == $0

     d = Pastry.create('brownide')
     #puts d.list
end
