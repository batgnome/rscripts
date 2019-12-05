class Drink
  @drink_prices = {
   'latte' => 3,
   'americano' => 4,
   'mocha' => 5,
 }

  @add_on_prices = {
    'soy' => 2,
    'milk' => 1,
    'almond' => 2,
    'vanilla' => 1,
  }


  def initialize(item)
    @drink = item.split(" ")
    # self.class.total(@drink)
    # self.class.list(@drink)
  end

  def self.create(string)
    if viable?(string)
      self.new(string)
    end
  end

  def self.viable?(string)
    @drink_prices.has_key?(string)
  end

  def total
    self.class.total(@drink)
  end

  def list
    self.class.list(@drink)
  end

  def self.total(drink)
    sum = 0
    drink.map do |e|
      if @drink_prices.key?(e) then
        sum += @drink_prices[e]
      elsif @add_on_prices.key?(e) then
        sum += @add_on_prices[e]
      end
    end
    sum
  end

  def self.list(drink)
    head, tail = drink.partition { |word| @drink_prices.key?(word) }
    (head + tail.sort_by{ |e| @drink_prices[e] }).each do |e|
      if @drink_prices.key?(e)
          puts "#{e.to_s.ljust(13)}#{@drink_prices[e]}"
      elsif @add_on_prices.key?(e)
          puts "-#{e.to_s.ljust(12)}#{@add_on_prices[e]}\n"
      end
    end
  end
end

if __FILE__ == $0

  d = Drink.new('vanilla soy latte')
  a = Drink.new('mocha vanilla soy')
  puts d.total
end
