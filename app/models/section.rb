class Section < ApplicationRecord
  has_one :menu_section
  has_many :section_items
  has_many :items, through: :section_items
  belongs_to :menu, through: :menu_section

  validates :label, :description, presence: true
end
