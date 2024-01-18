class Review < ApplicationRecord
  # association
  belongs_to :restaurant
  # validation
  validates :content ,:rating , presence: true
  validates :rating , numericality: { only_integer: true } , :inclusion => 0..5

end
