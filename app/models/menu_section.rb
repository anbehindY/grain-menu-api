class MenuSection < ApplicationRecord
  belongs_to :menu
  belongs_to :section

  validates :menu, presence: true
  validates :section, presence: true
  validates :display_order, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
