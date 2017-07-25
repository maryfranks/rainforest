class Product < ApplicationRecord

  def price_in_dollars
    price_in_cents / 100
  end

end
