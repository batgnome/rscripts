require_relative "drink"
class Cafe
  @prices = {
    'latte' => 1,
    almond: 2,
    latte: 4,
    americano: 3,
  }
  def espresso(drink, **kwargs)
    price = self.class.check_prices(drink)
    price + kwargs.sum do |thing, choice|
      self.class.check_prices(choice)
    end
  end

  def order(*order)

    order.map! { |e| e.split(' ') }.each {|e| e.each{|i| if i == 'latte' then puts 'good ' end}}



  end

  def self.check_prices(item)
    @prices[item].to_i
  end
end
#this is a comment
cafe = Cafe.new
puts cafe.order('vanilla soy latte', 'almond danish')
