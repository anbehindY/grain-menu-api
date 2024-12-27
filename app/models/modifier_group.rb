class ModifierGroup < ApplicationRecord
  has_many :modifiers
  references :item

  validates :label, :selection_required_min, :selection_required_max, presence: true
  validates :selection_required_min, :selection_required_max, numericality: { only_integer: true }
end
