class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"];
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :category, presence: true, acceptance: { accept: CATEGORIES }
  validates :address, presence: true
end
