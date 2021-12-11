class Spot < ApplicationRecord

  belongs_to :user
  belongs_to :category

  attachment :image

  validates :title, presence: true
  validates :caption, presence: true, length: {maximum: 200}

end
