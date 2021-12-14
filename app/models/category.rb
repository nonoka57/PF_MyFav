class Category < ApplicationRecord

  has_many :spots
  belongs_to :user

  validates :name, presence: true, length: {in: 1..10}, uniqueness: true

end
