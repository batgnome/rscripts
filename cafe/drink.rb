class Drink


  def initialize(item)
    @drink = item.split(" ")
  end

  def self.create(string)
    if viable?(string.split(" "))
      self.new(string)
    end
  end

  def self.viable?(array)
    overlapping_counter = array.count { |e| Order.drink_prices.has_key?(e) }
    overlapping_counter == 1

  end

  def total
    sum = 0
    @drink.map do |e|
      if Order.drink_prices.key?(e) then
        sum += Order.drink_prices[e]
      elsif Order.add_on_prices.key?(e) then
        sum += Order.add_on_prices[e]
      end
    end
    sum
  end

  def list
    head, tail = @drink.partition { |word| Order.drink_prices.key?(word) }
    (head + tail.sort_by{ |e| Order.drink_prices[e] }).each do |e|
      if Order.drink_prices.key?(e)
          puts "#{e.to_s.ljust(13)}$#{Order.drink_prices[e]}"
      elsif Order.add_on_prices.key?(e)
          puts "-#{e.to_s.ljust(12)}$#{Order.add_on_prices[e]}\n"
      end
    end
  end
end

