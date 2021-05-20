class Bottle < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  validates :status, inclusion: { in: %w(active empty expired) }
end
