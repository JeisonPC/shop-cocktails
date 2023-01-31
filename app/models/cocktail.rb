class Cocktail < ApplicationRecord
  has_one_attached :photo
  belongs_to :category

  before_save { |price| price.price = price.price.to_f }

end
