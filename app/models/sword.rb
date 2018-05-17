class Sword < ApplicationRecord
  belongs_to :user
  belongs_to :victim
  validates :length, length: { minimum: 2 }
  validates :length, length: { maximum: 16 }
  validates :material, format: { with: /\A[a-zA-Z]+\z/, message: "Only letters allowed" }
  validates :length, presence: true
  validates :material, presence: true
end
