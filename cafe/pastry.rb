
class Pastry

  include Edible

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

  def type
    @pastry
  end
end
