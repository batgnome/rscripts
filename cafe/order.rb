module Order
  @pastry_prices = {
     'brownie' => 3,
     'apple pie' => 4,
     'danish' => 5,
   }
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

  def self.add_on_prices
    @add_on_prices
  end

  def self.pastry_prices
    @pastry_prices
  end

  def self.drink_prices
    @drink_prices
  end

  def self.menu
    puts "_"*16
    puts "Drinks:".center(16)
    @drink_prices.each { |e| puts "#{e[0].to_s.ljust(12)}$#{e[1]}"}
    puts "Pastries:".center(16)
    @pastry_prices.each { |e| puts "#{e[0].to_s.ljust(12)}$#{e[1]}"}
    puts "Add ons:".center(16)
    @add_on_prices.each { |e| puts "#{e[0].to_s.ljust(12)}$#{e[1]}"}
    puts "_"*16
    puts 'Please order one item at a time, thank you'
  end

end
