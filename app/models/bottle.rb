class Bottle < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  has_one_attached :picture

  validates :status, inclusion: { in: %w(active empty expired) }
end
