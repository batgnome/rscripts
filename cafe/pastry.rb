
class Pastry
  @pastry_prices = {
   'brownie' => 3,
   'apple pie' => 4,
   'danish' => 5,
 }



  def initialize(item)
    @pastry = item
  end

  def total
    self.class.total(@pastry)
  end

  def list
    self.class.list(@pastry)
  end

  def self.total(pastry)
    @pastry_prices[pastry]
  end

  def self.list(pastry)
    # head, tail = pastry.partition { |word| @pastry_prices.key?(word) }
    # (head + tail.sort_by{ |e| @pastry_prices[e] }).each do |e|
    #   if @pastry_prices.key?(e)
    #       puts "#{e.to_s.ljust(12)} #{@pastry_prices[e]}"
    #   elsif @add_on_prices.key?(e)
    #       puts "-#{e.to_s.ljust(12)}#{@add_on_prices[e]}\n"
    #   end
    # end
    puts "#{pastry.to_s.ljust(13)}#{@pastry_prices[pastry]}\n"
  end
end

if __FILE__ == $0

  d = Pastry.new('apple pie')
  a = Pastry.new('danish')
  puts d.total
  d.list
end
