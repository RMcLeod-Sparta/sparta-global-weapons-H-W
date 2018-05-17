class Victim < ApplicationRecord
  validates :name, presence: true
  validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "Only letters allowed" }
  validates :date_of_death, numericality: { only_integer: true }
end
