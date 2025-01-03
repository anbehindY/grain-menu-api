class Modifier < ApplicationRecord
  belongs_to :item
  belongs_to :modifier_group

  validates :display_order, :default_quantity, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :price_override, numericality: true
end
