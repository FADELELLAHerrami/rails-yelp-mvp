class Restaurant < ApplicationRecord
  # association
  has_many :reviews, dependent: :destroy
  # validate
  validates :name, :address, :category, presence: true
  validates :category , inclusion: ["chinese", "italian", "japanese", "french", "belgian"]
  
end
