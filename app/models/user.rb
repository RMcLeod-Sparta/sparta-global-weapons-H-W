class User < ApplicationRecord
  has_many :swords
  has_many :victims, through: :swords
  validates_associated :swords
  validates_associated :victims
  validates :name, presence: true
  validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "Only letters allowed" }
  validates :age, format: { with: /\A[0-9]+\z/, message: "Only numbers allowed" }
  validates :gender, inclusion: { in: %w(o O m M f F), }
end
