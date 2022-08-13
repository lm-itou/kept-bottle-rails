class Bottle < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  has_one_attached :picture

  validates :status, inclusion: { in: %w(active empty expired) }

  def status_text
    case status
    when "active"
      "キープ中"
    when "empty"
      "空"
    when "expired"
      "期限切れ"
    else
      status
    end
  end
end
