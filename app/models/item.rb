class Item < ApplicationRecord
  has_one :section
  has_one :section_item
  has_one :modifier
  has_many :modifier_groups

  validates :item_type, :label, :description, :price, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
end
