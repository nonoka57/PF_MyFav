class Post < ApplicationRecord

  belongs_to :user
  belongs_to :category
  has_one :spot, dependent: :destroy
  accepts_nested_attributes_for :spot

  attachment :image

  validates :title, presence: true
  validates :caption, presence: true, length: {maximum: 200}

  validates :rate, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1 }, presence: true

  validates :param5, :numericality => { :less_than_or_equal_to => 5}
  validates :param1, :numericality => { :greater_than_or_equal_to => 1}

end
