module Edible

  def price
    Cafe.prices('self.name')
  end

end
