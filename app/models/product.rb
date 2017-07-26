class Product < ApplicationRecord

  validates :name, presence: true
  validates :description, presence: true
  validates :price_in_cents, numericality: { only_integer: true }

  has_many :reviews

  def price_in_dollars
    price_in_cents / 100
  end

end
