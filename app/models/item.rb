class Item < ApplicationRecord
  belongs_to :section, through: :section_item
  has_one :section_item
  has_one :modifier
  has_many :modifier_groups

  validates :type, :label, :description, :price, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }

end
